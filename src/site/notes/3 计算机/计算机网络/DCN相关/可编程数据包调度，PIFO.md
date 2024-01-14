---
aliases: []
date created: 2023-07-19T19:42:37+08:00
date modified: 2024-01-13T19:21:06+08:00
dg-publish: true
tags: []
title: 可编程数据包调度，PIFO
---

Push-In-First-Out（PIFO）队列是可编程数据包调度的一种常用抽象总结。PIFO 将一个列组与每个数据包相关联，并维护一个排序队列以缓冲数据包。新到达的数据包根据其等级插入队列，数据包从头部离开队列。通过改变 rank 计算功能，可以在 PIFO 的基础上实现不同的数据包调度算法。先前的工作表明，PIFO 可以支持广泛的流行调度算法，例如用于最小化流完成时间（FCT）的最短剩余处理时间（SRPT）和用于加权公平性的开始时间公平排队（STFQ）。

## 相关资源
[Sigcomm2021顶会论文：使用单个队列的可编程数据包调度方法(AIFO) - 知乎](https://zhuanlan.zhihu.com/p/414676685)