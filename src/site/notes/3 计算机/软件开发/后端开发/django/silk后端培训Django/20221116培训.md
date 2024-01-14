---
aliases: []
created: 2022-11-16 13:41:24+08:00
date created: 2023-07-05T16:15:59+08:00
date modified: 2024-01-13T19:21:09+08:00
dg-publish: true
tags: []
title: 20221116培训
updated: 2023-02-13 14:54:30+08:00
---

## BC
### Product - pricelist
#### 什么是 pricelist
可以设置价格规则，在 bundleb2b 界面，可以对于公司直接应用规则。
#### Bundleb2b 公司 pricelist 刷新
General 有一个按钮，可以刷新，但需要等待  
或者进入公司页面，会自动检查。

## Django
### 模型管理器
#### 什么是模型管理器
.objects 就是模型管理器，是默认语法。  
From django.db.models import Manager  
manager 也是模型管理器，可以把.objects 换成.manager
#### 小技巧
再写一个 manager.py，  
这个文件里可以对于 manager 进行继承，在类中定义一些方法，可以实现封装接口的查询步骤  
这个文件可以对于 queryset 进行继承，可以实现连续筛选
### 异步任务
考虑缓存后，就要考虑使用异步任务
#### 多线程与异步
多线程执行中，如果主进程结束，所有线程都会结束，对于处理计算密集型任务不保险；多线程会共享一个进程的资源，不适合占用 cpu 较高的任务；多线程更加适合网络 IO，此时 cpu 等用户输入，消耗资源少，适合用多线程或线程池。  
异步是多进程，适合多个进程对于数据库进行操作。使用时需要灵活测试，合理配置进程数量，使得 cpu 消耗量应该在 40% 以下。
#### Celery 是什么
celery 就是启用另一个进程进行任务的处理，可以实现异步任务  
celery 分成三个部分，taskproducer（由 django 的 application 提供任务，需要储存在 redis 中）、task queue（需要是一个先进先出的容器，最好用 RabbitMQ），task costomer
#### 如何使用 celery
1.安装 celery 4.3.0  
2.新建一个 tasks 文件夹  
3.内部新建配置文件  
4.对于接口使用 celery

## 答辩
第三个。  
第一个 ltr、第二个 lx、第三个我  
一个一个来

## jamessen 项目
[JamessenLiu/django_study_2022 (github.com)](https://github.com/JamessenLiu/django_study_2022)