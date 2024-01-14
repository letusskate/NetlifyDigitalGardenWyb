---
{"dg-publish":true,"permalink":"/3///docker/","title":"docker"}
---


## Docker 是什么？
Docker 将应用程序与该程序的依赖，打包在一个文件里面。运行这个文件，就会生成一个虚拟容器。程序在这个虚拟容器里运行，就好像在真实的物理机上运行一样。有了 Docker，就不用担心环境问题。  
总体来说，Docker 的接口相当简单，用户可以方便地创建和使用容器，把自己的应用放入容器。容器还可以进行版本管理、复制、分享、修改，就像管理普通的代码一样。  
管理环境 + 代码的工具，别人进来你的 docker，可以获得一摸一样的环境和程序。
### 和虚拟机的区别
虚拟机是操作系统级别的隔离，而多个镜像是进程级别的隔离。  
虚拟机需要安装完整的系统镜像，docker 只需要安装核心程序。
### 关于 docker 的基本概念
Client（客户端）：是 Docker 的用户端，可以接受用户命令和配置标识，并与 Docker daemon 通信。  
Images（镜像）：是一个只读模板，含创建 Docker 容器的说明，它与操作系统的安装光盘有点像。  
Containers（容器）：镜像的运行实例，镜像与容器的关系类比面向对象中的类和对象。  
Registry（仓库）：是一个集中存储与分发镜像的服务。最常用的 Registry 是官方的 Docker Hub
## pycharm 使用 docker
### Pycharm 通过 ssh 连接已在运行中的 docker 容器
[(13条消息) pycharm如何连接远程服务器的docker容器进行运行和调试代码（一）\_TanH.blog的博客-CSDN博客](https://blog.csdn.net/Thanours/article/details/109265315)
### pycharm 连接 docker 镜像，pycharm 运行代码再自动创建容器
[(17条消息) pycharm如何连接远程服务器的docker容器进行运行和调试代码（二）\_TanH.blog的博客-CSDN博客_pycharm 连接远程docker](https://blog.csdn.net/Thanours/article/details/109271836)
## docker 学习渠道
### 入门
[Docker的基本使用 - 知乎 (zhihu.com)](https://zhuanlan.zhihu.com/p/488447990)  
[Docker详解，7分钟学会\_哔哩哔哩\_bilibili](https://www.bilibili.com/video/BV1Yh4y1K7ka/?buvid=XY630CE669F34078F341989B1EE06E60B0127&is_story_h5=false&mid=g8UDjEqHIS5oCexxb9oAEQ%3D%3D&p=1&plat_id=116&share_from=ugc&share_medium=android&share_plat=android&share_session_id=9861becb-1281-4d14-9be9-ec326d571015&share_source=COPY&share_tag=s_i&timestamp=1694309813&unique_k=EYYYGWE&up_id=507373006&vd_source=20cb3e7c6ad3d64f0eb2d763ff005080)
### 文档
[前言 - Docker — 从入门到实践 (gitbook.io)](https://yeasy.gitbook.io/docker_practice/)
## docker 网络
### [linux](../linux/linux.md) 使用 docker 网络
[【入门篇】Docker网络模式Linux - Bridge | Host | None\_哔哩哔哩\_bilibili](https://www.bilibili.com/video/BV1Aj411r71b/?spm_id_from=333.337.search-card.all.click&vd_source=20cb3e7c6ad3d64f0eb2d763ff005080)
## docker compose
### 教程
[docker-compose一键部署运行各服务环境\_哔哩哔哩\_bilibili](https://www.bilibili.com/video/BV1Ph4y177i8/?spm_id_from=333.337.search-card.all.click)