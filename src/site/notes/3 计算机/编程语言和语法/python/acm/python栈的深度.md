---
aliases: []
created: 2022-04-08 23:56:00+08:00
date created: 2023-07-05T11:13:20+08:00
date modified: 2024-01-13T19:21:09+08:00
dg-publish: true
tags: []
title: python栈的深度
updated: 2022-04-08 23:57:58+08:00
---

太深了报错：  
RuntimeError: maximum recursion depth exceeded in comparison

sys.setrecursionlimit(3000) 把栈的深度改为 3000  
print(sys.getrecursionlimit())