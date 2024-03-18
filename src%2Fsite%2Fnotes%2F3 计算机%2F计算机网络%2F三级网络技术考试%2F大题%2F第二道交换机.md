---
aliases: []
created: 2022-03-26 05:54:44+08:00
date created: 2023-07-05T21:38:32+08:00
date modified: 2024-01-13T19:21:09+08:00
dg-publish: true
tags: []
title: 第二道交换机
updated: 2022-03-26 05:57:37+08:00
---

第二道交换机  
2022 年 3 月 26 日  
5:54

set vtp domain pku  
set vtp mode server  
set vlan 100 4/8  
set vlan 100 5/8  
set trunk 3/8 on dot1q  
set trunk 3/8 vlan 130,222