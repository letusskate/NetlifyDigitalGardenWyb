---
aliases: []
date created: 2023-07-24T18:57:19+08:00
date modified: 2024-01-13T19:21:06+08:00
dg-publish: true
tags: []
title: 系统相关命令
---

## 查看磁盘容量
```
df -lh
```
## 查看当前路径
pwd

## 查看文件夹里面的内容
Ls -A

## 查看系统架构
```sh
uname -a
```
```sh
arch
```

## 重启
init 6
## 查看 mac 地址
ip link show
## 查看服务
### 列出所有可用服务文件
`systemctl list-unit-files --type=service`
### 关闭或开启某些服务
`systemctl stop hw_server2020.1.service `  
`systemctl start hw_server2020.2.service`