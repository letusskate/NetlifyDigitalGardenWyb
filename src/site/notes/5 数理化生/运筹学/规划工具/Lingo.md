---
aliases: []
created: 2021-03-21 11:22:04+08:00
date created: 2023-07-05T11:13:20+08:00
date modified: 2024-01-14T16:45:16+08:00
dg-publish: true
tags: []
title: Lingo
updated: 2023-02-07 10:42:29+08:00
---

## sum 设置从 m 到 k 求和
无法实现，可以通过前缀和为变量，通过 if 判断是否为第一个数值实现。  
@for(n(i):@for(t(j):@free(@if(j#eq#1,r(i,j),r(i,j)-r(i,j-1)))));

## 取消非负限制
@free

## 变量定界函数
![image1](/img/user/resources/attachments/image1-1 5.png)
## lingo 灵敏度分析
详见川农运筹学实验作业。

## Lingo global solve
有时候需要求解全局最优，就需要设置，在 option 的 global solver 勾选上。  
![image2](/img/user/resources/attachments/image2-1 5.png)

## lingo 报错与处理
### The model generator ran out of memory
LINGO 模型生成器的内存已经用尽 (可用“LINGO\|Options" 命令对 General Solver 选项卡中的“Generator Memory Limit" 选项进行内存大小的修改)  
我自己测试，是在 options 的 model generator 里面。