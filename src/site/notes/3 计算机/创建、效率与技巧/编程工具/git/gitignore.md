---
aliases: []
date created: 2023-07-18T17:11:39+08:00
date modified: 2024-01-13T19:21:07+08:00
dg-publish: true
tags: []
title: gitignore
---

## gitgnore 文件用途
规定某些文件不上传至 github
## gitignore 模板文件
[GitHub - github/gitignore: A collection of useful .gitignore templates](https://github.com/github/gitignore)
## gitignore 语法
[Git 开发必备 .gitignore 详解！【建议收藏】Linux猿的博客-CSDN博客](https://blog.csdn.net/nyist_zxp/article/details/119887324)  
[Git的一些常用命令，及.gitignore的配置_melonss的博客-CSDN博客](https://blog.csdn.net/zxyudia/article/details/67633321)
## gitignore 生效要求
如果你是新加的，这里需要注意的是.gitignore 只能作用于没有被 track 的文件，也就是工作区的文件，对于 add，commit 操作后的文件是没有作用的，这个时候需要先把本地的缓存删除，在去提交，就可以实现忽略整个仓库文件了。
```
git remote add origin https://gitee.com/letusskate/obsidian-vault
git rm -r --cached .
git add .
git commit -m 'update .gitignore'
git push origin master
```