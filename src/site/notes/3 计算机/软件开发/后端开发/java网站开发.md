---
aliases: []
created: 2022-10-19 14:03:01+08:00
date created: 2023-07-05T11:13:20+08:00
date modified: 2024-01-13T19:21:06+08:00
dg-publish: true
tags: []
title: java网站开发
updated: 2022-11-28 10:42:53+08:00
---

## 线程
### 多线程执行方法
通过让 class extend thread，之后@override 重写 class 的 run 方法，之后让 class.start() 就可以实现一个线程的启动。  
直接 override thread，并直接执行 thread.start()  
创建一个类实现 Runnable 接口（class x implements Runnable()），之后重写 class 里面的 run() 方法，之后创建一个 class 对象（x z=new x()），之后将新对象作为参数传递给 thread（Thread m=new Thread(x)）,最后执行 m。  
实现 Callable 接口
### sleep()
线程暂时睡眠 xx 毫秒，此时线程为阻塞状态
### 优先级
.setPriority  
.getPriority  
Thread.MAX_PRIORITY=10  
Thread.MIN_PRIORITY=1  
Thread.NORM_PRIORITY=5
### 线程安全问题之 synchronized
同步代码块：在 run 方法中。runnable: 加入 synchronized(this) extend: 加入 synchronized(类名.class)  
同步方法：在 run 方法中使用一个新的函数处理可能导致线程安全问题的函数。runnable：public synchronized void f() extend：private static synchronized void f()
### 线程安全问题之 lock
ReentrantLock 类实现了 Lock，它拥有与 synchronized 相同的并发性和内存语义，在实现线程安全的控制中，比较常用的是 ReentrantLock，可以显式加锁、释放锁

## 框架
[(102条消息) Java框架总结_哪 吒的博客-CSDN博客_java框架](https://blog.csdn.net/guorui_java/article/details/104018528)
### mvc 理念
Model-View-Controller  
要点是 mc 分离

### SSM 框架
Spring-- 整体，降低耦合度，持有各层依赖对象的实例，通过依赖注入到需要的地方，包括 service 和 dao  
Springmvc---controller 层，  
Mybatis-- 数据库操纵 dao 层  
![image1](/img/user/resources/attachments/image1-59.png)

### SSH 框架
Struts2-- 控制  
Spring-- 解耦  
Hibernate-- 操作数据库

### springboot
不需要配置 xml，但依赖于 maven 这样的项目构建系统，简化了开发流程
#### spring boot 能同时处理多少请求
[京东二面：SpringBoot可以同时处理多少请求？直接就愣住了。。\_哔哩哔哩\_bilibili](https://www.bilibili.com/video/BV11N4y1d7LZ/?spm_id_from=333.1007.tianma.15-1-55.click&vd_source=20cb3e7c6ad3d64f0eb2d763ff005080)