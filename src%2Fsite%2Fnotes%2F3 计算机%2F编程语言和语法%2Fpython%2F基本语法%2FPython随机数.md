---
aliases: []
created: 2023-01-09 14:10:27+08:00
date created: 2023-07-05T11:13:20+08:00
date modified: 2024-01-13T19:21:09+08:00
dg-publish: true
tags: []
title: Python随机数
updated: 2023-01-09 14:19:22+08:00
---

## 浮点随机数
### 包含上下界
random.uniform(min,max)
### 0-1 之间不包含 1
random.random()  
在\[0.0, 1.0) 之间产生随机浮点数
## 整数随机数
### 包含上下界
random.randint(min, max)
## 正态分布随机数
random.normalvariate(mu=mu, sigma=sigma)