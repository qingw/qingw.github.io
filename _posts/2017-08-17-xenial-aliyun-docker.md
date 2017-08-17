---
layout: post
title: make your docker container xenial using aliyun 
categories: [xenial]
---

```
RUN echo deb-src http://archive.ubuntu.com/ubuntu xenial main restricted > /etc/apt/source.list && \
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
```
