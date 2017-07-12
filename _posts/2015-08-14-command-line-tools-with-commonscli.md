---
layout: post
title: 使用 Commons CLI 开发命令行工具
categories: [java]
---

## 简介

在我设计[arXiv Manager](https://github.com/nju-cs-quark/arxiv-manager)的时候，想将这个软件设计成命令行工具形式，从而用户可以完成不同的任务。如果自己去解析参数的话，代码太冗长而单调，所以决定服用成熟的代码。[Commons CLI][1]满足这样的需求。
下面我通过一个完整的例子展示如何准备、开发、测试一个命令行工具。希望本文对有相关需求的读者能有所帮助。

主要参考资料：
1. [Coomons CLI Website (where you can download it)][1]
2. [使用 Apache Commons CLI 开发命令行工具][2]
3. [Hexo在github上构建免费的Web应用][5] - 第4.3节：设置域名

## Commons CLI 简介

Apache Commons CLI 是 Apache 下面的一个解析命令行输入的工具包，该工具包还提供了自动生成输出帮助文档的功能。
Apache Commons CLI 支持多种输入参数格式，主要支持的格式有以下几种：
1. POSIX（Portable Operating System Interface of Unix）中的参数形式，例如 `tar -zxvf foo.tar.gz`
2. GNU 中的长参数形式，例如 `du --human-readable --max-depth=1`
3. Java 命令中的参数形式，例如 `java -Djava.net.useSystemProxies=true Foo`
4. 短杠参数带参数值的参数形式，例如 `gcc -O2 foo.c`
5. 长杠参数不带参数值的形式，例如 `ant - projecthelp`

通常情况下命令行处理有三个步骤：定义，解析和询问阶段。本章节将依次解释这三个步骤，并将结合实例来讨论如何通过 Apache Commons CLI 来实现它们。由于本文作者一直从事和存储相关的工作，所以我们将设计一个如何向 Server 中添加 / 删除存储数据源的 CLI。

[1]: https://commons.apache.org/proper/commons-cli/
[2]: https://www.ibm.com/developerworks/cn/java/j-lo-commonscli/
