---
aliases: []
created: 2022-03-25 17:21:54+08:00
date created: 2023-07-05T21:38:32+08:00
date modified: 2024-01-13T19:21:09+08:00
dg-publish: true
tags: []
title: 第二道路由器配置
updated: 2022-03-26 06:17:08+08:00
---

- 帧格式 --pos framing sdh 或 sonet  
pos flag s1s0 0（sonet）或 2（SDH）
- 默认路由配置应该 ip route 0.0.0.0 0.0.0.0 吓一跳路由 ip 地址
- 静态路由 配置 ip route 子网地址 子网掩码 下一跳
- loopback 接口 ip adress ip 地址 255.255.255.255  
dhcp 配置

除外地址 excluded－address

租用时间 lease day h min

ospf

router ospf 65