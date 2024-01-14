---
aliases: []
created: 2023-06-04 17:11:17+08:00
date created: 2023-07-05T11:13:20+08:00
date modified: 2024-01-13T19:21:09+08:00
dg-publish: true
tags: []
title: windows系统安装
updated: 2023-07-01 10:30:13+08:00
---

## 视频教程
[【装机教程】超详细WIN10系统安装教程，官方ISO直装与PE两种方法教程，UEFI+GUID分区与Legacy+MBR分区_哔哩哔哩_bilibili](https://www.bilibili.com/video/BV1DJ411D79y/?spm_id_from=333.788.recommend_more_video.-1&vd_source=20cb3e7c6ad3d64f0eb2d763ff005080)  
[【超细致装系统教程】从0起步，一步步教你把U盘做成PE系统启动盘，下载系统，安装系统，学不会退你硬币！方法适用于Win10 Win7 XP等_哔哩哔哩_bilibili](https://www.bilibili.com/video/BV1zK4y1K7V8/?spm_id_from=333.337.search-card.all.click&vd_source=20cb3e7c6ad3d64f0eb2d763ff005080)
### 双系统
[让你电脑充满更多功能，linux与windows双系统，你值得拥有\_哔哩哔哩\_bilibili](https://www.bilibili.com/video/BV1414y1d73a/?spm_id_from=333.337.search-card.all.click&vd_source=20cb3e7c6ad3d64f0eb2d763ff005080)

## 盗版系统下载
MSDN 我告诉你  
next 我告诉你

## 官方系统安装与激活
官网制作启动盘 [Download Windows 11 (microsoft.com)](https://www.microsoft.com/zh-cn/software-download/windows11)  
通过图拉丁吧工具箱激活

## 主板与磁盘的协议
uefi 主板对应 gpt 格式磁盘  
legancy 主板对应 mbr 格式磁盘

## 20230629 双系统
uefi 模式检测不到我插入的 u 盘，解决方法：用 legacy 模式安装系统  
legacy 模式用启动盘安装，安装过程中周期性出现《我们无法创建新的分区，也无法找到现有分区》解决方法：通过微 pe 自带的 windows 安装工具安装。  
安装后，电脑重启还是进入微 pe，原因是 legacy 模式检测不到安装好系统的硬盘，解决方法：关闭英特尔快速存储技术  
成功后，再次重启进入 bios，还是找不到安装好系统的硬盘，解决方法：选择 hard drive 启动即可  
全部成功后，如果想切换回 ubantu 系统，需要先进入 bios，把 legacy 切换为 uefi，选择 ubantu 启动  
如果想切换回 windows 系统，先进入 bios，把 uefi 切换为 legacy，选择 hard drive 启动  
![image1](/img/user/resources/attachments/image1-2 2.jpeg)