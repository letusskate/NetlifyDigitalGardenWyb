---
aliases: []
created: 2021-03-17 09:23:24+08:00
date created: 2023-07-05T11:13:20+08:00
date modified: 2024-01-13T19:21:09+08:00
dg-publish: true
tags: []
title: p62 多重部分和问题
updated: 2021-03-17 15:55:50+08:00
---

p62 多重部分和问题  
2021 年 3 月 17 日  
9:23  
![image1](/img/user/resources/attachments/image1-44.png)  
思考步骤：  
1.什么东西在增加/减少使得问题规模逐渐增加？  
2.把上面的东西作为函数参数，通过函数递归，可以暴力枚举将规模大的问题化简为规模小的吗？  
3.可以通过记忆化数组实现吗？  
4.可以通过正向推导完成吗？

1.数字的总数增加，每个数字都有两种表态。