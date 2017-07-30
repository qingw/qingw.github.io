---
layout: post
title: ElasticSearch System Setting
categories: [quantum]
---

## Introduction

1 vi /etc/security/limits.conf

添加如下内容:
*  soft nofile 65536

* hard nofile 131072

* soft nproc 2048

* hard nproc 4096


2 vi /etc/security/limits.d/90-nproc.conf

找到如下内容：

* soft nproc 1024

修改为

* soft nproc 2048

3 vi /etc/sysctl.conf

添加下面配置：

vm.max_map_count=655360

并执行命令：

sysctl -p

4 文件打开数，要求大于65535
 ulimit -n 65536
