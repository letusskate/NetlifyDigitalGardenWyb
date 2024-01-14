---
aliases: []
created: 2023-02-09 14:27:27+08:00
date created: 2023-07-05T11:13:20+08:00
date modified: 2024-01-13T19:21:09+08:00
dg-publish: true
tags: []
title: python多线程与多进程
updated: 2023-04-16 12:27:06+08:00
---

## 教程网站
[(31条消息) Python之多进程与多线程_宗而研之的博客-CSDN博客_python 多线程](https://blog.csdn.net/zong596568821xp/article/details/99678390)

## 多线程
### 优势
适合 I/O 密集型应用。

### 多线程实现
import threading  
\# 这个函数名可随便定义  
def run(n):  
print("current task：", n)  
if \_\_name\_\_ == "\_\_main\_\_":  
t1 = threading.Thread(target=run, args=("thread 1",))  
t2 = threading.Thread(target=run, args=("thread 2",))  
t1.start()  
t2.start()

### 多线程全局变量
多线程共享全局变量，一个线程对于全局变量进行更改后，下一个线程访问时全局变量为更改后的变量。

### 多线程同时接受各个线程的返回值
#### 方法一
全局变量的列表，append 是线程安全的
#### 方法二
自定义类别继承 thread，给 join 方法添加返回值
##### *代码*
class ThreadWithReturnValue(Thread):  
def run(self):  
if self.\_target is not None:  
self.\_return = self.\_target(\*self.\_args, \*\*self.\_kwargs)  
def join(self):  
super().join()  
return self.\_return

##### *出错*
如果通过自定义类给 Join 添加一个返回值，会导致有时候线程 run 结束了，再 join 就没有返回值了。
#### 方法三
##### *代码*
import concurrent.futures  
def foo(bar):  
return bar  
with concurrent.futures.ThreadPoolExecutor(max_workers=10) as executor:  
to_do = \[\]  
for i in range(10): \# 模拟多个任务  
future = executor.submit(foo, f"hello world! {i}")  
to_do.append(future)  
for future in concurrent.futures.as_completed(to_do): \# 并发执行  
print(future.result())
## 

## 多进程
### 优势
适合 CPU 密集型应用

### 多进程实现
from multiprocessing import Process  
def show(name):  
print("Process name is " + name)  
if \_\_name\_\_ == "\_\_main\_\_":  
proc = Process(target=show, args=('subprocess',))  
proc.start()  
proc.join()

### 多进程接收返回值
def number(done_queue):  
done_queue.put(5)

done_queue = multiprocessing.Queue()  
x = Process(target=number, args=(done_queue))  
x.start()  
x.join()  
y = \[i for i in done_queue\]  
print(y)

### 多进程与 pycharm
不能使用 python console 运行多进程代码，不然会报以下的错误：  
EOFError: Ran out of input  
解决方案：run config，取消勾选通过 python console 运行代码

### 多进程与全局变量
当操作系统使用 spawn 来创建新的进程时，比如 Windows，它会创建一个新的地址空间，并启动一个新的 Python 解释器，从第一行代码开始执行（解释）你的源程序。这意味着全局范围内的任何可执行语句都将被执行。