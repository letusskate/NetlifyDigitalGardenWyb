---
{"dg-publish":true,"permalink":"/3 计算机/创建、效率与技巧/linux/linux软件/具体软件/linux python/","title":"linux python"}
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
#### 环境隔离写法
```sh
./configure --prefix=/usr/local/python3/python37 
make && make install
```
### 软链接
```sh
ln -s /usr/local/python3/bin/python3.9 /usr/bin/python 
ln -s /usr/local/python3/bin/pip3.9 /usr/bin/pip
```
#### 环境隔离写法
```sh
ln -s /usr/local/python3/python37/bin/python3.7 /usr/bin/python37 
ln -s /usr/local/python3/python37/bin/pip3.7 /usr/bin/pip37
```
### 可以查找 python 位置
```sh
where python 
where pip
```
## 环境出问题
```python
ImportError: No module named bz2
```
### 解决方法
```python
sudo apt-get install libbz2-dev
```
之后重装一个 python，我重装了一个 3.10 就没问题了。
### 相关帖子
[linux - missing python bz2 module - Stack Overflow](https://stackoverflow.com/questions/12806122/missing-python-bz2-module)
## tju desktop linux 的 python
3.8 不能用  
cocotb 可以用，但经过了比较复杂的配置，现在最好不要动 3.10 和 3.9 的 python 环境，也就是 `user/local/python3/bin`，也不要动 `usr/bin` 里面的设置，新安装的 python 最好不要加环境变量，