---
aliases: []
created: 2021-09-10 19:35:15+08:00
date created: 2023-07-05T11:13:20+08:00
date modified: 2024-01-13T19:21:06+08:00
dg-publish: true
tags: []
title: groupby的遍历
updated: 2021-09-10 19:35:29+08:00
---

gb=df.groupby(**' 材料分类 '**)  
for group_name,group_df in gb: