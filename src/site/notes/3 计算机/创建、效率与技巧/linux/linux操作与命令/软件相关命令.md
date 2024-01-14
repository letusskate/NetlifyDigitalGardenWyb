---
aliases: []
date created: 2023-07-24T18:56:49+08:00
date modified: 2024-01-13T19:21:06+08:00
dg-publish: true
tags: []
title: 软件相关命令
---

## 软件开机启动
### 查看开机启动服务的状态
systemctl status rc-local
### 相关教程
[Ubuntu22.04 rc-local 配置开机自启动脚本 - 贾斯丁哔哔 - 博客园](https://www.cnblogs.com/king-dom/p/17371747.html)  
[Linux设置开机启动的三种方式-腾讯云开发者社区-腾讯云](https://cloud.tencent.com/developer/article/1625609)  
[linux设置开机自启动-腾讯云开发者社区-腾讯云](https://cloud.tencent.com/developer/article/1852573)

## 卸载软件
```shell
dpkg --list
sudo apt-get remove unload
```
### 同时删除配置
```shell
sudo apt-get --purge remove unload
```
### 相关教程
[Linux卸载软件命令 • Worktile社区](https://worktile.com/kb/p/47084)

## 创建快捷方式
在 linux 中是软链接
```sh
ln -s /home/test2/Documents/Zotero_linux-x86_64/zotero.desktop /home/test2/.local/share/applications/zotero.desktop
```
```sh
ln -s test test_fast
```
也就是给 test 创建快捷方式名为 test_fast，注意 test 路径必须是绝对路径！！！

## 关闭后台进程
### 查看线程
```sh
ps -ef | grep java
ps -ef | grep QQ
```
### 结果说明
其中 root 后面的 46482 是要结束的进程的 ID  
![](/img/user/resources/attachments/Pasted image 20230710101512.png)
### 关闭进程
其中 kill -9 进程 ID，关闭进程命令
```sh
kill -9 46482
kill -9 10305 # qq
```
### 可视化方法
system monitor，类似 windows 的任务管理器

## 用命令行启动软件
找到对应文件夹，/opt/name，比如/opt/QQ  
打开 shell  
输入 qq  
即可启动
### 关闭命令行保持程序运行
```sh
nohup ./aaa & 
exit
```