---
aliases: []
date created: 2023-07-24T18:56:29+08:00
date modified: 2024-01-17T10:00:54+08:00
dg-publish: true
tags: []
title: 权限相关命令
---

## 添加环境变量
### 方法一
#### 步骤
~/.bashrc 文件末尾加上一行
```shell
export PATH=$PATH:/home/LS/Cpp/Paracooba-master/build/
```
冒号后面是需要添加到 path 的文件夹路径。
#### 例子
export PATH=$PATH:/usr/local/texlive/2023/bin/x86_64-linux
#### 相关教程
[在Linux中将某文件夹加入PATH路径\_export path=$path:/sbin/\_NickWilde233的博客-CSDN博客](https://blog.csdn.net/m0_46246804/article/details/108392146)  
[Linux中将指定文件夹添加到环境变量中\_LS\_learner的博客-CSDN博客](https://blog.csdn.net/qq_39777550/article/details/119539136)
### 方法二
ln -s 一个命令到 user/bin
### 方法三
命令行执行 `export PATH=$PATH:/home/LS/Cpp/Paracooba-master/build/`

## 获取 root 权限并打开资源管理器
```sh
sudo -s
nautilus
```
exit 退出即可
## 命令行 sudo 不用输入密码
问题：

sudo: a terminal is required to read the password; either use the -S option to read from standard in or configure an askpass helper

原因：

具有 sudo 权限的用户执行 shell 脚本时，脚本中使用的 sudo 命令需要输入密码

解决方法：

编辑文件/etc/sudoers, 配置此 sudo 权限用户 (例如：sudoaccount）使用 sudo 命令时不需要输入密码

```ruby
sudoaccount@mydesktop:~$ sudo visudo
```

在文件末尾添加

```cobol
sudoaccount ALL=(ALL:ALL) NOPASSWD: ALL
```

:wq 保存编辑，退出