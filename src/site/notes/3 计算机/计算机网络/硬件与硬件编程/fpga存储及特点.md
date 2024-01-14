---
aliases: []
date created: 2023-09-07T15:29:04+08:00
date modified: 2024-01-13T19:21:06+08:00
dg-publish: true
tags: []
title: fpga存储及特点
---

## 相关视频
[Tutorial - Flip-Flops in FPGAs](https://nandland.com/lesson-5-what-is-a-flip-flop/)  
[FPGA Memory Types - Project F](https://projectf.io/posts/fpga-memory-types/)  
## 我的总结
Flip-flop，高效读写，但可供同时处理的数据量受限  
片上的 BRAM 的 block 之间的连接可以尝试重新组合，以实现大容量  
DRAM，可以高效读  
不同方案的组合，比如缓存 - 写入 - 读取，比如 CQRS
## 官方视频的说法
[HLS教程第1课：软件工程师该怎么了解FPGA架构？\_哔哩哔哩\_bilibili](https://www.bilibili.com/video/BV1BQ4y1N78x/?vd_source=20cb3e7c6ad3d64f0eb2d763ff005080)  
BLOCK RAM  
LUT in SLICEM  
就这两种