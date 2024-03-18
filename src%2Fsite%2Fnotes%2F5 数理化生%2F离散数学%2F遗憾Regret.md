---
aliases: []
created: 2022-12-05 13:55:43+08:00
date created: 2023-07-05T11:13:20+08:00
date modified: 2024-01-14T16:45:16+08:00
dg-publish: true
tags: []
title: 遗憾Regret
updated: 2022-12-16 12:57:07+08:00
---

## Regret（遗憾）
### 什么是 regret
regret 就是我们所获得的回报和先知获得的回报的差距。
### regret bound（遗憾界）
#### 什么是遗憾界
一般来说，我们设计算法的目标就是让期望的 regret（一般研究的是 regret 的 upper bound）比较小。那么 sample complexity，说的则是相反的一件事情，即无论什么算法，对 MAB 问题，你期望的 regret 都至少应该有多大（给的是 lower bound）。
#### Upper bound 与 lower bound
遗憾的最大值与最小值，一般是 T 的函数，因为时间越长，遗憾越大
### Sublinear regret
#### 什么是次线性 regret
一般指遗憾的 lower bound 是根号 T 或者 logT 的。当我们随便蒙的的时候，肯定是 T 的，但是当我们一边蒙一边学，可能我们离先知越来越近，regret 的增加也就越来越少。  
![image1](/img/user/resources/attachments/image1-30 1.png)
#### 次线性 regret 有关定理
![image2](/img/user/resources/attachments/image2-16 2.png)