---
aliases: []
created: 2022-03-26 03:14:22+08:00
date created: 2023-07-05T21:38:32+08:00
date modified: 2024-01-13T19:21:09+08:00
dg-publish: true
tags: []
title: 6 交换机极其配置
updated: 2022-03-26 04:47:31+08:00
---

6 交换机极其配置  
2022 年 3 月 26 日  
3:14

交换机基本功能

维护一个 MAC 地址与交换机端口对应关系的表

交换机交换模式

快速转发直通：14 个字节开始转发

碎片丢弃：缓存钱 64 字节，检查冲突过滤碎片

存储转发：整个读取到内存

vlan 缺省名字

VLAN00xxx

交换机 vtp 工作模式

Server 提供配置

Transparent 独立工作不学习

Client 学习配置

vlan 工作在数据链路层

交换机时间配置

set time 星期几 月/日/年 具体时间

交换机速率配置

set port speed\<3/1-3/24\> 1000

vlan id 数值范围 1－1094，可用于以太网的是 2－1000，1002－1005 是 fddi 和 token ring 的 vlan id

配置交换机设备管理地址，普通子网掩码。

交换表

高端交换机交换表在 CAM 中

没收到 MAC 时，用 Flood 技术转发

使用“show mac－address－table”显示小型交换机路由表

“show cam dynamic ”显示交换表内容

交换表内容：MAC、端口号及所在虚拟子网