---
aliases: []
created: 2022-04-02 11:15:47+08:00
date created: 2023-07-05T11:13:20+08:00
date modified: 2024-01-13T19:21:06+08:00
dg-publish: true
tags: []
title: 睡眠唤醒
updated: 2023-06-20 12:14:46+08:00
---

## 睡眠后总会被唤醒
[(64条消息) Win10无法睡眠解决办法_毒bug天下的博客-CSDN博客_awaymodeenabled找不到](https://blog.csdn.net/qq_44151767/article/details/108354168)  
注册表编辑器窗口中，依次展开到：  
**HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Power**  
点击 Power 后在右侧双击打开 AwayModeEnabled 值，然后将其数值数据修改为 0 点击确定保存，若没有该值则右侧单击右键新建一个 DWORD 32 位 值， 命名为 AwayModeEnabled 修改数值 0

## 排查方法与解决
### 排查
cmd  
powercfg -lastwake  
查看是什么唤醒了睡眠
### 修复
#### 如果是 usb 设备
如果是 usb 设备，在设备管理器中，选择键盘和鼠标，都关掉电源管理，之后逐个开启。  
因为有些键盘在鼠标里，有些鼠标在键盘里，且有些单个设备又在键盘里又在鼠标里，要都关闭电源管理才有效。  
![image1](/img/user/resources/attachments/image1-1 3.png)  
我的设备：键盘 1、3，鼠标 1 是鼠标。 键盘 2、4 和鼠标 2 是键盘。  
注意到下图中，如果父设备编号相同，那就是同一个设备。  
![image2](/img/user/resources/attachments/image2-1 3.png)

#### 如果是软件
[手动执行睡眠后电脑屏幕又亮了（电脑无法睡眠）\_电脑点了睡眠后又自己亮屏了_xw_09的博客-CSDN博客](https://blog.csdn.net/xw_009/article/details/127921845)  
高级电源设置 -\>睡眠 -\>允许使用唤醒定时器
#### 如果是网卡
设备管理器，排查网卡。