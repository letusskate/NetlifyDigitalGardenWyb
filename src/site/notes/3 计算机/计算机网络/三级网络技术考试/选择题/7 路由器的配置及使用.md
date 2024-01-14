---
aliases: []
created: 2022-03-26 02:34:08+08:00
date created: 2023-07-05T21:38:32+08:00
date modified: 2024-01-13T19:21:09+08:00
dg-publish: true
tags: []
title: 7 路由器的配置及使用
updated: 2022-03-26 03:13:50+08:00
---

7 路由器的配置及使用  
2022 年 3 月 26 日  
2:34

vty 模式（config line）

ACL 访问控制列表，能不加 log 就不加  
deny、permit 后面是 ip＋反掩码

远程配置路由器 应用的接口：AUX

rip 协议不支持可变长掩码，配置命令里也没有掩码