---
layout: post
title: jessie aliyun mirrors
categories: [docker]
---

```
USER root 
#清除了基础镜像设置的源，切换成阿里云的jessie源 
RUN echo '' > /etc/apt/sources.list.d/jessie-backports.list \   && echo "deb http://mirrors.aliyun.com/debian jessie main contrib non-free" > /etc/apt/sources.list \   && echo "deb http://mirrors.aliyun.com/debian jessie-updates main contrib non-free" >> /etc/apt/sources.list \   && echo "deb http://mirrors.aliyun.com/debian-security jessie/updates main contrib non-free" >> /etc/apt/sources.list 
#更新源并安装缺少的包 
RUN apt-get update && apt-get install -y libltdl7 
```
