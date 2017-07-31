---
layout: post
title: git revert
categories: [research]
---

一、本地切换到master分支git checkout master

二、新建old_master分支备份，以防万一

Git branch old_master 
git push origin old_master:old_master 将本地old_master分支推送到远程old_master

三、删除远程master分支

设置github中默认分支为非master分支，否则，下一步删除操作被github禁止，github不能删除默认分支. 
将如下图中的 Default Branch 改成 非master。

删除远程的master分支 (注意master前有个:) 
git push origin :master

四、本地版本回退到某一个版本

本地仓库彻底回退到某一个版本 
git reset –hard commit_sha(for example: a10801cc21c2dd4e6fb2d1fdcd6e1ac4fbbfebcf)

五、重新创建远程master分支

git push origin master

如果master 分支不在的话，需要 
如果你还想在将master分支做为默认的分支，如果master分支在的话就git push origin master。如果不在的话，就

再建一个叫master的分支，然后类似操作（将内容提交到master分支上，push到远程的github上，进入settings中设置master为默认的分支即可。）
