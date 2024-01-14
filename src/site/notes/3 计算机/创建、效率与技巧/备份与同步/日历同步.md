---
aliases: []
created: 2022-12-03 13:18:38+08:00
date created: 2023-07-08T12:22:17+08:00
date modified: 2024-01-13T19:21:06+08:00
dg-publish: true
tags: []
title: 日历同步
updated: 2023-06-18 12:36:37+08:00
---

## 什么是日历同步
实现电脑端和手机端日历同步，电脑可以看到手机上的日历信息。

## 日历同步种类
icloud 同步  
caldav 同步  
.ics 文件云端同步（ical 订阅）  
微软邮箱日历同步（exchange server，适用于 outlook 邮箱）

## exchange server 日历同步
### 华为手机和 windows 日历同步
#### 操作方法
电脑和手机都登录 exchange 邮箱（microsoft 账号自带的 outlook 邮箱，可以通过别名，我的邮箱是 wang_yu_bo@outlook.com）即可。日历要配置成发送到邮箱中。
#### 一个教程
[日历同步（手机+电脑） 使用系统原生日历软件 - 知乎 (zhihu.com)](https://zhuanlan.zhihu.com/p/129350806)
#### 我之前的设置
![image1](/img/user/resources/attachments/image1 3.jpeg)

## ics 文件云端同步
### 什么是 ics 云端同步
ics 是日历标准格式文件，就是把这个文件用服务器托管了。每次下载从云端下载，上传也上传到云端。
### outlook ics 和 [obsidian](../../../0%20日记与提升/笔记技巧/obsidian/obsidian.md) 的 full calendar 同步
#### outlook 设置
##### 文件
[Fetching Title#76l3](https://outlook.live.com/owa/calendar/00000000-0000-0000-0000-000000000000/edf7e511-13e5-4373-bb1f-353f7b98d52a/cid-B51ACC7083602AED/calendar.ics)  
##### 网站 outlook 操作
[Outlook](https://outlook.live.com/calendar/0/view/month)  
![](/img/user/resources/attachments/Screenshot from 2023-07-08 11-11-07.png)
#### obsidian 设置
full calander 复制 ics 链接即可  
[网址](https://outlook.live.com/owa/calendar/00000000-0000-0000-0000-000000000000/3285203d-b973-4ea0-99c5-8338fb497f48/cid-B51ACC7083602AED/calendar.ics)

## 华为手机日历导出
日程 - 长按 - 全选 - 导出