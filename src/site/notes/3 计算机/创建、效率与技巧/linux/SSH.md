---
{"dg-publish":true,"permalink":"/3 计算机/创建、效率与技巧/linux/SSH/","title":"SSH"}
---


## ssh 链接终端后进程自动中断问题
[Site Unreachable](https://www.zhihu.com/question/542936219)
### 方法一 nohup
[Linux nohup后台启动/ 后台启动命令中nohup 、&、重定向的使用-CSDN博客](https://blog.csdn.net/weixin_49114503/article/details/134266408)
### 方法二 tmux/screen
[tmux](linux软件/tmux.md) 可以在 ssh 断开的时候保持运行
### 如果需要通过链接 ssh 连接容器
通过 vscode 的 docker 插件启动容器，或者通过 -d 守护进程启动。（[守护进程启动，不会因 ssh 断开而停止](../编程工具/docker/docker使用.md#守护进程启动，不会因%20ssh%20断开而停止)）  
之后在 docker 里用 tmux。

## ssh 自动链接不输入密码
```
ssh-keygen -t rsa
ssh-copy-id user@hostname
```
举例：`ssh-copy-id -p 10106 dell@172.28.9.43`  
windows 没有 ssh-copy-id，用 git bash
## ssh 密钥生成
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

## 私钥文件权限问题
```
Permissions 0664 for '/home/test2/.ssh/tjuDesktopLinuxCodeServer.pem' are too open. It is required that your private key files are NOT accessible by others. This private key will be ignored. Load key "/home/test2/.ssh/tjuDesktopLinuxCodeServer.pem": bad permissions
```
### 解决方式
您收到的错误信息是 SSH（安全外壳协议）在检测到私钥文件权限过于开放时的安全警告。SSH 要求私钥文件只能由文件的所有者访问，这意味着权限应该设置为 `600`（仅限所有者读写）或八进制表示的 `0600`。
```sh
cd /home/test2/.ssh
chmod 600 tjuDesktopLinuxCodeServer.pem
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