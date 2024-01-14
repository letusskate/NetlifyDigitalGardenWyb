---
aliases: []
created: 2023-01-29 15:51:16+08:00
date created: 2023-07-05T11:13:20+08:00
date modified: 2024-01-14T16:45:16+08:00
dg-publish: true
tags: []
title: 约束满足问题csp与约束编程cp
updated: 2023-01-29 15:55:31+08:00
---

## 相关帖子
[Constraint programming - Wikipedia](https://en.wikipedia.org/wiki/Constraint_programming)  
[(28条消息) Google OR-Tools(四) 约束编程 Constraint Programming_皇家园林巡游者的博客-CSDN博客_constraint programming](https://blog.csdn.net/wangzhenyang2/article/details/104377308)  
ortools 是 google 的开源寻优框架 [Ortools](规划工具/Ortools.md)
## 简介
约束满足问题就是一个规划问题的约束条件中，很多约束条件不容易被公式化，而是表现为 if-else 语句的类似形式。比如，如果选择 x1=1 时，x2 必须大于 3。  
是运筹学、组合数学、数学优化的一种 [组合数学](../../组合数学/组合数学.md)
## 求解工具
Google OR-Tools 中解决整数规划问题有 MP Solver 和 CP Solver 两种工具。CP Solver 一般用于约束满足问题 (Constraint Satisfaction Problem)，简称 CSP。