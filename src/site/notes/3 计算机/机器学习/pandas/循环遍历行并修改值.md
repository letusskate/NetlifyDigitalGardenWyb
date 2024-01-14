---
aliases: []
created: 2021-08-21 17:41:52+08:00
date created: 2023-07-05T11:13:20+08:00
date modified: 2024-01-13T19:21:06+08:00
dg-publish: true
tags: []
title: 循环遍历行并修改值
updated: 2021-08-21 17:47:15+08:00
---

for idx,row in df.iterrows():  
df.loc\[idx,' 列名 '\]=…#最快

df.loc\[idx,\[' 列名 '\]=…#慢一些

还有种办法，对 row 进行赋值，最后使用 df.iloc\[idx\]=row，这样做可能出错。