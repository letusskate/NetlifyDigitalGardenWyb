---
aliases: []
created: 2023-01-03 14:25:41+08:00
date created: 2023-07-05T11:13:20+08:00
date modified: 2024-01-13T19:21:06+08:00
dg-publish: true
tags: []
title: keras
updated: 2023-01-03 14:28:55+08:00
---

## 报错
### Load .h5 文件的时候
AttributeError: 'str' object has no attribute 'decode'
### 解决方法
首先卸载原来的 h5py-3.1.0  
之后 pip install h5py==2.10.0（换源：pip3 install -i <https://pypi.tuna.tsinghua.edu.cn/simple> h5py==2.10.0）