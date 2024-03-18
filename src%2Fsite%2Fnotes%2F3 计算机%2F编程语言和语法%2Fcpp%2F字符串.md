---
aliases: []
created: 2022-03-03 18:40:44+08:00
date created: 2023-07-05T11:13:20+08:00
date modified: 2024-01-13T19:21:06+08:00
dg-publish: true
tags: []
title: 字符串
updated: 2022-03-04 12:13:23+08:00
---

## 切片
strs.substr(begin,pos)  
begin 表示开始的下标，下标从 0 开始，pos 表示持续多少个字符
## 拼接
直接相加
## 与数字转化
stoi 把字符串转化为数字，int 范围内；atoi 是把 const char\* 转化为数字，也就是需要 string 后调用 c_str() 方法。  
to_string 把 int 转化为 string，longlong 支持

## 获取长度
string.length()