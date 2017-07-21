---
layout: post
title: docker machine install swarm cluster
categories: [quantum]
---

- @TODO　prepare for creating a shell script to create cluster one key.

- docker-machine create -d virtualbox --engine-env DOCKER_TLS=no --engine-opt host=tcp://0.0.0.0:2375 node1

```
    1  docker-machine
    2  docker-machine version
    3  docker-machine create --driver virtualbox containerhost
    4  brew cask install virtualbox
    5  brew
    6  ruby
    7  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    8  bew tap phinze/homebrew-cask
    9  brew tap phinze/homebrew-cask
   10  brew install brew-cask
   11  brew install brew-cask
   12  brew tap phinze/homebrew-cask
   13  brew install brew-cask
   14  brew install brew-cask
   15  brew tap caskroom/cask
   16  brew cask install virtualbox
   17  history | grep machine
   18  docker-machine create --driver virtualbox containerhost
   19   docker-machine env containerhost
   20  eval "$(docker-machine env containerhost)"
   21  ifconfig
   22  ls
   23  eval "$(docker-machine env containerhost)"
   24  docker-machine ip containerhost
   25  docker -machine rm containerhost
   26  docker-machine rm containerhost
   27  docker-machine create -d virtualbox local
   28  docker-machine env local
   29   eval $(docker-machine env local)
   30  docker run swarm create
   31  docker-machine stop local
   32  docker-machine rm local
   33  history | grep local
   34  docker-machine create -d virtualbox --engine-registry-mirror  http://aad0405c.m.daocloud.io local
   35  eval $(docker-machine env local)
   36  docker run swarm create
   37  docker-machine stop local
   38  docker-machine rm local
   39  docker-machine create -d virtualbox --engine-registry-mirror  http://aad0405c.m.daocloud.io manager1
   40  docker-machine ip manager1
   41  docker-machine create -d virtualbox --engine-registry-mirror  http://aad0405c.m.daocloud.io worker1
   42  docker-machine ip worker1
   43  docker-machine create -d virtualbox --engine-registry-mirror  http://aad0405c.m.daocloud.io worker2
   44  docker-machine ssh manager1
   45  docker-machine ssh worker1
   46  docker-machine ssh worker2
   47  brew install homebrew/nginx/nginx-full --with-stream
   48  vi /usr/local/nginx/nginx.conf
   49  vi /usr/local/etc/nginx/nginx.conf
   50  nginx -t
   51  nginx -s reload
   52  nginx 
   53  nginx -=s reload
   54  nginx -s reload
   55  ifconfig
   56  telnet 192.168.99.100 2377
   57  telnet 192.168.99.100 2377
   58  nginx -s reload
   59  emacs
   60  nginx -s reload
   61  nginx
   62  nginx -s reload
   63  ifconfig
   64  ifconfig
   65  nginx -t
   66  nginx -s reload
   67  telnet 192.168.99.100 2375
   68  telnet 192.168.99.100 2377
   69  telnet 192.168.99.100 2376
   70  docker-machine ssh manager1
   71  history > mini.sh
```


