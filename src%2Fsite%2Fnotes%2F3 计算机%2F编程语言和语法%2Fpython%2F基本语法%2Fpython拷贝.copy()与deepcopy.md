---
aliases: []
created: 2022-12-27 16:39:37+08:00
date created: 2023-07-05T11:13:20+08:00
date modified: 2024-01-13T19:21:09+08:00
dg-publish: true
tags: []
title: python拷贝.copy()与deepcopy
updated: 2023-02-16 10:11:32+08:00
---

## 区别
对于数字变量，直接赋值即可  
对于简单的结构体，list 里面只有数字，那么都一样。  
对于复杂的结构体，比如 list 里面还有 list，那么 deepcopy 才可以

![image1](/img/user/resources/attachments/image1-34 1.png)

a=dict()  
lst=\[\]  
a\['b'\]=1  
a\['c'\]=1  
lst.append(a)  
lst.append(a.copy())  
a\['b'\]=2  
a\['c'\]=2  
lst.append(a)  
for i in lst:  
print(i)

可以看到，如果直接把字典 append 进入 lst，如果在外部改了字典的值，lst 中字典会改变。  
如果把字典的 copy 加入 lst，如果在外部改了字典的值，lst 中字典不会改变。