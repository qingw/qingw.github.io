---
layout: post
title: docker ca alpine aliyun
categories: [research]
---
# create docker-ca using docker
- docker run --rm -it -v $PWD/.docker:/root/.docker registry.gzq.chanjet.com/simon/docker-ca:alpine-ali.3.6 example.com

#Dockerfile
```
FROM alpine:3.6
RUN echo http://mirrors.aliyun.com/alpine/v3.6/main > /etc/apk/repositories && \
    echo http://mirrors.aliyun.com/alpine/v3.6/community >> /etc/apk/repositories && \
    apk update && apk upgrade

RUN apk add ruby ruby-dev
RUN gem sources --add https://gems.ruby-china.org/ --remove https://rubygems.org/
RUN gem sources -l
RUN gem install certificate_authority --no-ri --no-rdoc
ADD ./certgen.rb /root/certgen.rb

WORKDIR /root

VOLUME "/root/.docker"

ENTRYPOINT ["ruby","/root/certgen.rb"]
```

- ruby 

```
# Generates necessary certificates to ~/.docker
#
# Usage:
#   bundle install
#   ruby certgen.rb <domain>

require 'certificate_authority'
require 'fileutils'

if ARGV.empty?
  puts "Usage: ruby certgen.rb <domain>"
  exit 1
end

$domain = ARGV[0]

$certs_path = File.join(ENV['HOME'], '.docker')

def certificate_authority
  cert_path = File.join($certs_path, 'ca', 'cert.pem')
  ca_path = File.join($certs_path, 'ca', 'key.pem')

  key_material = if File.exist?(ca_path)
    key = OpenSSL::PKey::RSA.new(File.read(ca_path))
    mem_key = CertificateAuthority::MemoryKeyMaterial.new
    mem_key.public_key = key.public_key
    mem_key.private_key = key
    mem_key
  else
    mem_key = CertificateAuthority::MemoryKeyMaterial.new
    mem_key.generate_key
    mem_key
  end

  if File.exist?(cert_path)
    raw_cert = File.read(cert_path)
    openssl = OpenSSL::X509::Certificate.new(raw_cert)
    cert = CertificateAuthority::Certificate.from_openssl(openssl)
    cert.key_material = key_material
    cert
  else
    root = CertificateAuthority::Certificate.new
    root.subject.common_name = $domain
    root.serial_number.number = 1
    root.signing_entity = true
    root.key_material = key_material

    ca_profile = {
      "extensions" => {
        "keyUsage" => {
          "usage" => [ "critical", "keyCertSign" ]
        }
      }
    }

    root.sign!(ca_profile)

    root
  end
end

def server_certificate(root)
  server = CertificateAuthority::Certificate.new
  server.subject.common_name = $domain
  server.serial_number.number = rand(3..100000)
  server.parent = root
  server.key_material.generate_key
  server.sign!
  server
end

def client_certificate(root)
  client = CertificateAuthority::Certificate.new
  client.subject.common_name = $domain
  client.serial_number.number = 2
  client.parent = root

  client.key_material.generate_key

  signing_profile = {
    "extensions" => {
      "extendedKeyUsage" => {
        "usage" => [ "clientAuth" ]
      }
    }
  }

  client.sign!(signing_profile)

  client
end

root = certificate_authority
server = server_certificate(root)
client = client_certificate(root)

[
  # You can reuse this file to generate more certs
  ['ca/key.pem', root.key_material.private_key],
  ['ca/cert.pem', root.to_pem],

  # Those are default filenames expected by Docker
  ['ca.pem', root.to_pem],
  ['key.pem', client.key_material.private_key],
  ['cert.pem', client.to_pem],

  # Those files are supposed to be uploaded to server
  ["#{$domain}/ca.pem", root.to_pem],
  ["#{$domain}/key.pem", server.key_material.private_key],
  ["#{$domain}/cert.pem", server.to_pem]
].each do |name, contents|
  path = File.join($certs_path, name)
  FileUtils.mkdir_p(File.dirname(path))
  File.write(path, contents)
  File.chmod(0600, path)
end

puts "CA certificates are in #{$certs_path}/ca"
puts "Client certificates are in #{$certs_path}"
puts "Server certificates are in #{$certs_path}/#{$domain}"
```

I. 拷贝服务端证书到远端

脚本生成 Docker daemon需要的键值和证书~/.docker/example.com(example.com 是你的域名).

在服务端拷贝到~/.dockerdirectory下:

rsync -ave ssh ~/.docker/example.com/ root@example.com:~/.docker/

III. 在远端配置Docker

Docker daemon在0.10后支持--tlsverify 来提供加密的远端连接

假设你是用的是 Ubuntu 12.04 LTS并已经安装了Docker .其它环境下可能有些不同.

只需要在/etc/default/docker加入下面配置:

DOCKER_OPTS="--tlsverify -H=unix:///var/run/docker.sock -H=0.0.0.0:4243 --tlscacert=/root/.docker/ca.pem --tlscert=/root/.docker/cert.pem --tlskey=/root/.docker/key.pem"

之后重启 Docker daemon:

service docker restart

如果有错Docker daemon就会启动不了. 可以通过 under/var/log/upstart/docker.log来调试.
