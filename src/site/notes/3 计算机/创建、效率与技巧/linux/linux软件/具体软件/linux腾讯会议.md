---
{"dg-publish":true,"permalink":"/3 计算机/创建、效率与技巧/linux/linux软件/具体软件/linux腾讯会议/","title":"linux腾讯会议"}
---


## linux 新版本腾讯会议不支持
[检测到窗口系统采用wayland协议 腾讯会议暂不兼容 程序即将退出 - 知乎](https://zhuanlan.zhihu.com/p/546516064)
```sh
sudo vim /etc/gdm3/custom.conf
#WaylandEnable=false 的注释井号去掉
sudo service gdm3 restart
```