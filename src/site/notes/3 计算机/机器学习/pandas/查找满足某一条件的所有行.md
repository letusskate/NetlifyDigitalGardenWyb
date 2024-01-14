---
aliases: []
created: 2021-08-22 11:17:09+08:00
date created: 2023-07-05T11:13:20+08:00
date modified: 2024-01-13T19:21:06+08:00
dg-publish: true
tags: []
title: 查找满足某一条件的所有行
updated: 2021-08-22 11:18:03+08:00
---

allstudent.loc\[idx, ' 打卡汇总 '\] = next(iter(dakahuizong.loc\[dakahuizong\[' 学号 '\] == str(row\[' 学号 '\]), ' 打卡汇总 '\]), ' 灰 ') （这里是返回所有行的第一行），如果没有返回灰