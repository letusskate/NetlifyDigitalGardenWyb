---
aliases: []
date created: 2023-07-24T18:55:49+08:00
date modified: 2024-01-13T19:21:06+08:00
dg-publish: true
tags: []
title: 文件相关命令
---

## 磁盘的挂载
### 什么是挂载
linux 是一个文件系统，要给磁盘分配路径  
当无法访问其他磁盘时，给其他磁盘分配一个路径即可。
### 查看硬盘大小以及挂载分区
```sh
df -h
```
### 教程
[Linux之——挂载新硬盘方法 - 知乎](https://zhuanlan.zhihu.com/p/76697397)

## 取消文件锁
从系统文件夹复制到用户目录时，会使得文件有锁头。  
是因为该文件属于 root 用户。  
因此可以改变文件的所有者来消除锁头。
```
sudo chown 用户名 文件名
```
对于目录
```
sudo chown -R 用户名 目录名
```

## 执行文件
```sh
sh xxx
```

## 删除文件
```sh
sudo rm -rf
```
后面跟空格，之后把文件夹拖拽到命令行中即可  
[Linux下强制删除文件和权限操作 - iBoundary - 博客园](https://www.cnblogs.com/iBoundary/p/12653238.html)

## 命令行用 vim 
### 管理员打开文件
```sh
sudo vim <filename>
```
### 关闭并保存
```sh
:wq
```

## 软连接与硬链接
### 相关视频
[linux软链接vs硬链接\_哔哩哔哩\_bilibili](https://www.bilibili.com/video/BV1bh4y1E7aV/?spm_id_from=333.337.search-card.all.click&vd_source=20cb3e7c6ad3d64f0eb2d763ff005080)