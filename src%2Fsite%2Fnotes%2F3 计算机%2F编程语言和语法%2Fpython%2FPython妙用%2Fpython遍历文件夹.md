---
aliases: []
created: 2023-04-16 12:31:23+08:00
date created: 2023-07-05T11:13:20+08:00
date modified: 2024-01-13T19:21:09+08:00
dg-publish: true
tags: []
title: python遍历文件夹
updated: 2023-04-16 12:37:03+08:00
---

## Walk
会遍历文件夹下的所有内容。  
for root, dirs, files in os.walk(file):

## 
## Listdir
### 普通遍历
import os  
from os import path  
\#定义一个函数  
def scaner_file (url):  
\#遍历当前路径下所有文件  
file = os.listdir(url)  
for f in file:  
\#字符串拼接  
real_url = path.join (url , f)  
\#打印出来  
print(real_url)  
\#调用自定义函数  
scaner_file("D:\\\\")

### 递归遍历
import os  
from os import path  
def scaner_file (url):  
file = os.listdir(url)  
for f in file:  
real_url = path.join (url , f)  
if path.isfile(real_url):  
print(path.abspath(real_url))  
\# 如果是文件，则以绝度路径的方式输出  
elif path.isdir(real_url):  
\#如果是目录，则是地柜调研自定义函数 scaner_file (url) 进行多次  
scaner_file(real_url)  
else:  
print(" 其他情况 ")  
pass  
print(real_url)  
scaner_file("D:\\\\")