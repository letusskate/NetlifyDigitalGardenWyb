---
aliases: []
date created: 2023-07-24T19:10:37+08:00
date modified: 2024-01-13T19:21:09+08:00
dg-publish: true
tags: []
title: linux python
---

## linux 下的 [python安装](../../../../编程语言和语法/python/python环境配置/python软件安装.md)
### 教程
[Linux 安装 Python 各个版本，这一篇就够了\_linux 的 python 包\_ 信橙则灵的博客 -CSDN 博客](https://blog.csdn.net/qq_42571592/article/details/122902266
### 下载与解压
官网下载 tar，之后解压
### 安装
```sh
./configure --prefix=/usr/local/python3 
make && make install
```
### 软链接
```sh
ln -s /usr/local/python3/bin/python3.9 /usr/bin/python 
ln -s /usr/local/python3/bin/pip3.9 /usr/bin/pip
```
### 可以查找 python 位置
```sh
where python 
where pip
```
### 环境出问题
```python
ImportError: No module named bz2
```
#### 解决方法
```python
sudo apt-get install libbz2-dev
```
之后重装一个 python，我重装了一个 3.10 就没问题了。
#### 相关帖子
[linux - missing python bz2 module - Stack Overflow](https://stackoverflow.com/questions/12806122/missing-python-bz2-module)