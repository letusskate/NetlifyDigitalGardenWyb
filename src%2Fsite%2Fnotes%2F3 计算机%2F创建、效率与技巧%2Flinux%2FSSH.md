---
aliases: []
created: 2022-12-05 15:10:03+08:00
date created: 2023-07-05T11:13:20+08:00
date modified: 2024-01-13T19:21:06+08:00
dg-publish: true
tags: []
title: SSH
updated: 2022-12-05 15:12:52+08:00
---

## ssh 密钥
### 主机生成公钥
电脑的 gitbash 或者 powershell 可以生成 rsa 等协议的公钥和私钥。  
在云端网站添加公钥后，客户端使用私钥访问云端网站就不用输入用户名密码了。  
```sh
ssh-keygen -t rsa  
```
[生成ssh密钥（windows+linux）\_win10生成ssh密钥\_fking86的博客-CSDN博客](https://blog.csdn.net/jinxinxin1314/article/details/130997376)  
[如何在同一电脑上生成配置多个ssh key 公钥 私钥（保姆级教程）\_Malunc的博客-CSDN博客](https://blog.csdn.net/qq_55558061/article/details/124117445)  
生成后在 C:\Users\Wang Yubo\\.ssh 路径下
#### 主机查看公钥
```
cat ~/.ssh/id_ed25519.pub
```
### 给云端添加 ssh 公钥
[生成、添加 SSH 公钥 | Gitee 产品文档](https://help.gitee.com/repository/ssh-key/generate-and-add-ssh-public-key)
### 测试是否能用
```shell
ssh -T git@github.com
ssh -T git@gitee.com
```

## 什么是 ssh
SSH(Secure Shell,安全外壳) 是一种网络安全协议,通过加密和认证机制实现安全的访问和文件传输等业务,SSH 协议通过对网络数据进行加密和验证,在不安全的网络环境中提供了安全的登录和其他安全网络服务。  
通常用 ssh 链接 linux 服务器。

## 如何使用 ssh 连接服务器
### windows 自带 cmd
大家可以通过 win+r，-cmd ，在面板输入 winver 来查看自己系统版本。  
![image1](/img/user/resources/attachments/image1-7 1.jpg)

据了解大于 18 的才有 ssh 的客户端功能。  
接着继续在控制台输入以下命令来连接 ssh。  
ssh 用户名@IP

![image2](/img/user/resources/attachments/image2-34.png)  
接着输入“Yes”，按下回车。  
![image3](/img/user/resources/attachments/image3-21.png)  
提示这种就证明连接成功了，是不是非常简单呢。