---
aliases: []
date created: 2023-07-18T17:11:26+08:00
date modified: 2024-01-13T19:21:07+08:00
dg-publish: true
tags: []
title: git报错与解决
---

## cannot create directory at ‘XXXXX’: Filename too long
### 报错信息
fatal: cannot create directory at ‘XXXXX’: Filename too long
### 解决
打开 gitbash  
git config --global core.longpaths true
## fetch-pack: invalid index-pack output
### 报错信息
error: RPC failed; curl 92 HTTP/2 stream 0 was not closed cleanly: CANCEL (err 8)  
error: 7090 bytes of body are still expected  
fetch-pack: unexpected disconnect while reading sideband packet  
fatal: early EOF  
fatal: fetch-pack: invalid index-pack output
### 解决
[git - error: RPC failed; curl 92 HTTP/2 stream 0 was not closed cleanly: PROTOCOL_ERROR (err 1) - Stack Overflow](https://stackoverflow.com/questions/59282476/error-rpc-failed-curl-92-http-2-stream-0-was-not-closed-cleanly-protocol-erro/66606623)
#### 方法一
git config --global http.version HTTP/1.1  
结束后  
git config --global http.version HTTP/2
#### 方法二
git config --global http.postBuffer 157286400
#### 方法三
换好一点的网
#### 方法四
clone http 方式换成 SSH 的方式，即 https:// 改为 git://  
例如 git clone <https://github.com/flutter/flutter.git>  
换成 git clone git://github.com/flutter/flutter.git
#### 方法五
git clone <https://github.com/flutter/flutter.git> --depth 1  
–depth 1 的含义是复制深度为 1，就是每个文件只取最近一次提交，不是整个历史版本。
## Initial commit failed，初始化失败
### 相关博客
<https://blog.csdn.net/weixin_45771224/article/details/105749938>
### 报错信息
Successfully created project ‘pinyougou-parent’ on GitHub, but initial commit failed: \*\*\* Please tell me who you are. Run git config --global user.email “you@example.com” git config --global user.name “Your Name” to set your account’s default identity. Omit --global to set the identity only in this repository. unable to auto-detect email address (got ‘sx@DESKTOP-Q8BNGOQ.(none)’)
### 解决方法
需要设置自己的邮箱，在 git 中。  
git config --global user.email “你的邮箱账号@example.com”  
git config --global user.name “你的名字”
## couldn't kickstart handshaking，无法启动握手
### 解决办法
①检查网络是否正常，在 File】→【Settings】→【Version Control】→【GitHub】中修改 Connection timeout 连接超时时间  
②检查 GitHub 中关联仓库是否被删除  
以上两点正常可尝试重启 PyCharm 后检查是否正常  
若是问题依然存在，点击【File】→【Settings】→【Version Control】，选择 GitHub 账号，点击【-】号，点击【reset】，或者点击【+】重新添加 GitHub 账号  
可能经常性出现超时，这是国内 qiang 的问题，把此网站中的 IP 添加到 hosts 中即可解决 Timeout 问题
## OpenSSL SSL_read: Connection was reset, errno 10054
### 解决方法
1.检查 git 有没有设置邮箱和用户  
2.进入 cmd、ipconfig /flushdns
## Failed to connect to github.com port 443: Timed out
这个错误大致是说连接到 github 的时候超时了。那么该怎么解决呢？很简单，这个超时了无非就是你的代理出了点问题，不过好在 git 上用几个命令就能够很快搞定。  
git config --global --unset http.proxy  
git config --global --unset https.proxy  
进入 cmd、ipconfig /flushdns
## The requested URL returned error: 403 没有权限
### 相关网页资源
[(25条消息) 彻底解决关于The requested URL returned error: 403错误_qwerqaqqq的博客-CSDN博客_the requested url returned error: 403](https://blog.csdn.net/qq_40226073/article/details/119801341)