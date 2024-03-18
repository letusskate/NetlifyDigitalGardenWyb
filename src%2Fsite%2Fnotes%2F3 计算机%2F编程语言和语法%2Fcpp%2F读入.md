---
aliases: []
created: 2022-03-03 18:08:44+08:00
date created: 2023-07-05T11:13:20+08:00
date modified: 2024-01-13T19:21:06+08:00
dg-publish: true
tags: []
title: 读入
updated: 2022-03-04 12:13:15+08:00
---

## 快速读入
  std::ios::sync_with_stdio(false);  
  cin.tie(0);  
  cout.tie(0);

## 一整行包括空格读入
输入带空格的字符串 gets()、cin.getline(s,length)、getline(cin,s,'\n')  
往往前面要通过 getchar() 吃掉最后一个回车（或者 cin.ignore();）