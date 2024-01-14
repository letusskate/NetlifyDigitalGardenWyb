---
aliases: []
date created: 2023-11-01T08:57:54+08:00
date modified: 2024-01-13T19:21:06+08:00
dg-publish: true
tags: []
title: 容器网络
---

## 主机网络 host network
在主机网络中，容器共享主机的网络命名空间并使用主机 IP。主机模式提供的性能非常接近裸机网络
## 本机陆游网络 native-host network
每个容器分配一个 ip
## Macvlan/Ipvlan network
模拟多个虚拟 nic 加入容器，和主机具有不同 ip  
但可扩展性和主机网络一样偏弱
## Ｏverlay nework
每个容器有自己的 ip  
但其他主机只能处理主机的路由，忽略容器陆游