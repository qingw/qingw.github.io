RUN echo http://mirrors.aliyun.com/alpine/v3.6/main > /etc/apk/repositories && \
    echo http://mirrors.aliyun.com/alpine/v3.6/community >> /etc/apk/repositories && \
    apk update && apk upgrade

echo deb-src http://archive.ubuntu.com/ubuntu xenial main restricted > /etc/apt/source.list && \
echo deb http://mirrors.aliyun.com/ubuntu/ xenial main restricted >> /etc/apt/source.list && \
echo deb-src http://mirrors.aliyun.com/ubuntu/ xenial main restricted multiverse universe >> /etc/apt/source.list && \
echo deb http://mirrors.aliyun.com/ubuntu/ xenial-updates main restricted >> /etc/apt/source.list && \
echo deb-src http://mirrors.aliyun.com/ubuntu/ xenial-updates main restricted multiverse universe >> /etc/apt/source.list && \
echo deb http://mirrors.aliyun.com/ubuntu/ xenial universe >> /etc/apt/source.list && \
echo deb http://mirrors.aliyun.com/ubuntu/ xenial-updates universe >> /etc/apt/source.list && \
echo deb http://mirrors.aliyun.com/ubuntu/ xenial multiverse >> /etc/apt/source.list && \
echo deb http://mirrors.aliyun.com/ubuntu/ xenial-updates multiverse >> /etc/apt/source.list && \
echo deb http://mirrors.aliyun.com/ubuntu/ xenial-backports main restricted universe multiverse >> /etc/apt/source.list && \
echo deb-src http://mirrors.aliyun.com/ubuntu/ xenial-backports main restricted universe multiverse >> /etc/apt/source.list && \
echo deb http://archive.canonical.com/ubuntu xenial partner >> /etc/apt/source.list && \
echo deb-src http://archive.canonical.com/ubuntu xenial partner >> /etc/apt/source.list && \
echo deb http://mirrors.aliyun.com/ubuntu/ xenial-security main restricted >> /etc/apt/source.list && \
echo deb-src http://mirrors.aliyun.com/ubuntu/ xenial-security main restricted multiverse universe >> /etc/apt/source.list && \
echo deb http://mirrors.aliyun.com/ubuntu/ xenial-security universe >> /etc/apt/source.list && \
echo deb http://mirrors.aliyun.com/ubuntu/ xenial-security multiverse >> /etc/apt/source.list
