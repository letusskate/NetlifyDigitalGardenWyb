---
aliases: []
created: 2022-12-08 12:44:02+08:00
date created: 2023-07-05T11:13:20+08:00
date modified: 2024-01-13T19:21:09+08:00
dg-publish: true
tags: []
title: Python装饰器
updated: 2022-12-08 13:04:38+08:00
---

## 装饰器
### 什么是装饰器
在被调用的函数前加入@修饰，增加被调用的函数的功能。
### 装饰器例子
体现为定义的函数 a 参数是一个函数 b，函数 a 的内部又定义了一个函数 c，且这个内部函数 c 调用了外部函数 a 的参数函数 b，具体如下，这个例子中 how_much_time 是函数 a，fuc 是函数 b，inner 是函数 c：  
def how_much_time(func):  
def inner():  
t_start = time.time()  
func()  
t_end = time.time()  
print(" 一共花费了{0}秒时间 ".format(t_end - t_start, ))  
return inner  
\# 将增加的新功能代码以及被装饰函数运行代码 func() 一同打包返回，返回的是一个内部函数，这个被返回的函数就是装饰器
### 怎么使用装饰器
首先定义好装饰器，装饰器是对函数使用的，加在函数头部，如下。  
@how_much_time  
def sleep_6s():  
time.sleep(6)  
print("%d 秒结束了 " % (6,))