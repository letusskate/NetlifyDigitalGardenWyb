---
aliases: []
created: 2022-12-08 13:04:40+08:00
date created: 2023-07-05T11:13:20+08:00
date modified: 2024-01-13T19:21:09+08:00
dg-publish: true
tags: []
title: Python import其他文件的function
updated: 2023-04-16 12:29:09+08:00
---

## 导入文件
python 可以引用同级的所有文件，如果是 django，当前目录是 manage.py。
### 导入上级文件
#### 方法一
如果想引用上级文件，要通过以下代码进入上一级文件夹  
import sys  
sys.path.append("..")
#### 方法二
通过 from ….package import xxx 的方式进行引用。  
一个点表示当前文件夹同级文件  
两个点表示上一级文件夹，以此类推。