---
aliases: []
created: 2022-10-31 09:12:50+08:00
date created: 2023-07-05T11:13:20+08:00
date modified: 2024-01-13T19:21:09+08:00
dg-publish: true
tags: []
title: python函数传参
updated: 2023-04-16 12:27:22+08:00
---

python 函数传参  
2022 年 10 月 31 日  
9:12

## \*args 与 \*\*kwargs
def receive_args(\*args, \*\*kwargs):  
print('args is: ',args)  
print('kwargs is: ',kwargs)  
receive_args(0,1,2,name='jyz',gender='male',hhh='xxx')  
a = 0  
b = 1  
d = {'name':'jyz','gender':'male'}  
receive_args(a,b,d)