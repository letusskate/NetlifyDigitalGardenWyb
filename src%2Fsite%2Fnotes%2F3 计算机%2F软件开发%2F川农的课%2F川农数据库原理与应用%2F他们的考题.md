---
aliases: []
created: 2022-01-10 21:52:31+08:00
date created: 2023-07-05T11:13:20+08:00
date modified: 2024-01-13T19:21:09+08:00
dg-publish: true
tags: []
title: 他们的考题
updated: 2022-01-11 07:20:24+08:00
---

我听说的：  
数据库的三级结构在数据字典 对？

DBMS 的功能  
数据库设计六个阶段  
数据库安全保护  
用户权限的取回 revoke

案例分析：求闭包、最小函数依赖集、判断是否是无损分解

六个阶段、每个阶段的作用；授权；收回；视图

林彬：  
数据库故障  
ACID 事务的特性  
grant/revoke  
create view/index  
发的资料、学习通

寝室：  
ロリコン変態 2022/1/10 21:39:25  
日志存啥，有啥用，登记原则，为啥

ロリコン変態 2022/1/10 21:39:28  
数据库管理系统是啥，功能

ロリコン変態 2022/1/10 21:39:45  
6 个阶段和数据管理系统的概念和主要功能

ロリコン変態 2022/1/10 21:39:51  
日志作用？两个原则？为什么

ロリコン変態 2022/1/10 21:39:55  
安全性控制概念？安全性控制 5 个方法？分别简述一下

ロリコン変態 2022/1/1021:57:02  
进行事务故障恢复;  
进行系统故障恢复;  
协助后备副本进行介质故障恢复  
登记日志文件时必须遵循两条原则：（1）登记的次序严格按并发事务执行的时间次序。（2）必须先写日志文件，后写数据库。  
把对数据的修改写到数据库中和把表示这个修改的日志记录写到日志文件中是两个不同的操作。有可能在这两个操作之间发生故障,即这两个写操作只完成了一个。如果先写了数据库修改,而在运行记录中没有登记这个修改,则以后就无法恢复这个修改了。如果先写日志,但没有修改数据库,在恢复时只不过是多执行一次 UNDO 操作,并不会影响数据库的正确性。所以一定要先写日志文件,即首先把日志记录写到日志文件中,然后写数据库的修改。

ロリコン変態 2022/1/1021:59:27  
数据库管理系统是一种操纵和管理数据库的大型软件,是用于建立、使用和维护数据库的系统。用户通过数据库管理系统访问数据库中的数据,数据库管理员也通过数据库管理系统进行数据库的维护工作。  
1.数据定义  
2.数据操作  
3.数据库的运行管理  
4.数据组织、存储与管理

ロリコン変態 2022/1/1022:01:13  
系统需求分析阶段；概念结构阶段；逻辑结构阶段；物理设计阶段；数据库实施阶段；数据库运行维护阶段

ロリコン変態 2022/1/1022:03:45  
保护数据库以防止不合法的使用所造成的数据泄露、更改或者破坏。  
用户标识和鉴定;  
存取控制;  
视图;  
审计;  
加密存储