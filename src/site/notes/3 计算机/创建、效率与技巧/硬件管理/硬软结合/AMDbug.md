---
aliases: []
created: 2023-06-17 12:44:52+08:00
date created: 2023-07-05T11:13:20+08:00
date modified: 2024-01-13T19:21:07+08:00
dg-publish: true
tags: []
title: AMDbug
updated: 2023-06-17 12:51:38+08:00
---

## 游戏卡顿
### 视频
[【AMD BUG质检员】关于高精度事件计时器引起的AMD卡顿问题_哔哩哔哩_bilibili](https://www.bilibili.com/video/BV1Eu411Y7JQ/?buvid=XY630CE669F34078F341989B1EE06E60B0127&is_story_h5=false&mid=g8UDjEqHIS5oCexxb9oAEQ%3D%3D&p=1&plat_id=116&share_from=ugc&share_medium=android&share_plat=android&share_session_id=02563ec1-cefd-4dcc-8717-e94d4d86d47c&share_source=WEIXIN&share_tag=s_i&timestamp=1686910828&unique_k=o64EbZR&up_id=32085016&vd_source=20cb3e7c6ad3d64f0eb2d763ff005080)
### 具体问题
![image1](/img/user/resources/attachments/image1-20 2.png)
### 文字
如果你使用一切正常就不用管这个了，如果是 AMD 锐龙平台有游戏卡顿的感觉可以试试  
步骤 1: 管理员模式运行 cmd 命令提示符 (重要，一定要管理员运行)  
步骤 2:  
指令①  
bcdedit /deletevalue useplatformclock

指令②  
bcdedit /set useplatformclock false

先执行指令①，如果提示 " 操作成功 "，那就完成了，剩下的指令②就不用管了。如果不是 " 操作成功 "，那就执行一次指令②，再执行指令①就会提示 " 操作成功 " 了  
——  
卡顿的影响因素有很多，不一定是这一个，也不一定会有效。如果是老平台性能本身不够，先升级，如果已经是新平台还是有卡顿再来试试这个  
——