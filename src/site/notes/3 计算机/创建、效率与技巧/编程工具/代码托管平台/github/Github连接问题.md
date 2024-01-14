---
aliases: []
date created: 2023-07-25T14:36:33+08:00
date modified: 2024-01-13T19:21:09+08:00
dg-publish: true
tags: []
title: Github连接问题
---

## github 连接问题
### 相关软件
#### Watt toolkit
原 steam++，我测试，无法用 git
#### 开发者边车
[docmirror/dev-sidecar: 开发者边车，github打不开，github加速，git clone加速，git release下载加速，stackoverflow加速](https://github.com/docmirror/dev-sidecar)  
我测试，感觉效果一般，无法解决 git 的问题。
#### FastGithub
[dotnetcore/FastGithub: github加速神器，解决github打不开、用户头像无法加载、releases无法上传下载、git-clone、git-pull、git-push失败等问题](https://github.com/dotnetcore/FastGithub)  
我测试感觉效果很好，且可以作为服务启动，`./fastgithub.exe start`，`./fastgithub.exe stop`，而不是作为软件启动。并且十分稳定，从此之后 push 和 pull 没有失败过。**但是会导致 windows 商店无法进入、windows 账号登陆报错等问题。**
#### csdn 帖子
[(24条消息) Github如何稳定-高效-安全访问_不用翻墙_稳定访问github_Fang GL的博客-CSDN博客](https://blog.csdn.net/m0_58022371/article/details/126558905#3_31)
### 更改 hosts 文件
#### 路径
C:\Windows\System32\drivers\etc\hosts
#### 大神的 host
<https://link.zhihu.com/?target=https%3A//raw.hellogithub.com/hosts>
#### 更改后刷新 dns
在 cmd 里输入：ipconfig /flushdns
#### 知乎帖子
[GitHub连不上的解决方案 - 知乎 (zhihu.com)](https://zhuanlan.zhihu.com/p/486712912)
### 挂梯子后解决无法 git 的问题
#### 官方文档
[Using SSH over the HTTPS port - GitHub Docs](https://docs.github.com/en/authentication/troubleshooting-ssh/using-ssh-over-the-https-port)
#### 视频教程
[开启VPN后使用ssh协议连接GitHub失败的解决方法\_哔哩哔哩\_bilibili](https://www.bilibili.com/video/BV1gk4y1M7KZ/?spm_id_from=333.337.search-card.all.click&vd_source=20cb3e7c6ad3d64f0eb2d763ff005080)
#### 解决方法
##### 测试
```shell
ssh -T -p 443 git@ssh.github.com
```
##### 克隆
```
git clone ssh://git@ssh.github.com:443/YOUR-USERNAME/YOUR-REPOSITORY.git
```
##### 进行永久配置
编辑/创建文件：~/.ssh/config
```
Host github.com
    Hostname ssh.github.com
    Port 443
    User git
```
测试效果
```shell
$ ssh -T git@github.com
```