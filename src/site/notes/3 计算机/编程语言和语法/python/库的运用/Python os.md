---
aliases: []
created: 2023-02-02 17:57:05+08:00
date created: 2023-07-05T11:13:20+08:00
date modified: 2024-01-13T19:21:09+08:00
dg-publish: true
tags: []
title: Python os
updated: 2023-02-03 14:16:57+08:00
---

windows 下，如果文件名过长，os.path.exists 会返回 false，实际上文件夹可能存在。  
因此在创建文件夹的时候尽量保证文件夹名称短小，不包含中文和除了 -\_ 以外的符号。  
os 也可以通过..访问上一级文件夹，windows 资源管理器也可以这样操作