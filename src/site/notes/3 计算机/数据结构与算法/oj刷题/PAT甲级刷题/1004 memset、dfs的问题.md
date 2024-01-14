---
aliases: []
created: 2021-01-29 09:45:29+08:00
date created: 2023-07-05T11:13:20+08:00
date modified: 2024-01-13T19:21:07+08:00
dg-publish: true
tags: []
title: 1004 memset、dfs的问题
updated: 2021-01-30 10:48:52+08:00
---

1004 memset、dfs 的问题  
2021 年 1 月 29 日  
9:45  
![image1](/img/user/resources/attachments/image1-40.png)  
这样写 memset 就行  
如果写成 memset(cengnum,0,N) 就会出现 -1，不知道为什么  
因为是内存数而不是变量数