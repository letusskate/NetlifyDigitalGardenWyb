---
aliases: []
created: 2022-01-27 03:50:02+08:00
date created: 2023-07-05T11:13:20+08:00
date modified: 2024-01-13T19:21:07+08:00
dg-publish: true
tags: []
title: 一台主机连接电视和电脑
updated: 2022-11-06 22:02:38+08:00
---

一台主机连接电视和电脑  
2022 年 1 月 27 日  
3:50

## 设计目的
PC 工作，打 lol 之类的游戏。  
连接电视的时候打游戏，只需要配备两个手柄就可以了。  
只需要一个主机两个线。
## 现状简介
我家台式电脑只支持 dvi 输出  
我家的电视支持 vga 和 hdmi 输入  
客厅显示器和我的卧室显示器都支持 dvi 和 vga 输入  
目前的线缆一共 3 根，如下  
1 号：vga 输入、vga 输出  
2 号：dvi 输入、dvi 输出  
3 号：hdmi 输入、dvi 输出（双向）
## 早期规划
首先根据数据库原理学到的最小函数依赖集，我们发现 hdmi 输入只能用在我的 pc，因此先安排 3 号用在我的卧室。  
考虑 2 号可以直接连接主机和显示器。  
考虑 1 号没法用，此时只剩电视，因此考虑购买：dvi 转 dvi+vga 杂牌 40 元 //// usb 转 vga。  
这种情况完美利用所有的线。
## 首次失败再次规划
已经购买 usb 转 vga。最后配置时，电视无法使用 vga 接口，其余一样，因此需要重新购置一根线。  
1.如果保持现有的不退货，需要一根 dvi 转 hdmi 的线直接连上电视；客厅电脑用 usb 转 vga。这是比较好的操作方式，比较方便，但是客厅电脑画质和帧率不好，我自己测试是一秒一帧，很他妈慢。总价格 35（usb 转 vga）+32（dvi 转 hdmi）。  
2.不退货，选择 hdmi 转 vga 的一个转换器，通过两个转换器实现 usb 转 vga 转 hdmi 从而连上电视；客厅电脑用 dvi 连 dvi。这样做其实不好，vga 画质最差，在电视上效果更差，估计两秒一帧。总价格 35（usb 转 vga）+30（vga 转 hdmi）  
3.退货，之后选择 usb 转 hdmi，再买一根 hdmi 链接 hdmi 的线，联通电视（也有 usb 直接转 hdmi 的线，89）；客厅电脑通过 dvi 和 dvi 的线直接连上。这样做效果最好，电视是数字信号，几乎没有损失，电脑也没有损失。总价格不确定  
4.退货，之后选择一根 dvi 转 hdmi 的线连上电视；客厅电脑选择一个 usb 转 dvi，通过 dvidvi 线链接客厅电脑。这样做电视效果很好，电脑要想效果好就要花大价钱，250 左右。  
5.退货，之后选择 dvi 转 dvi+vga，通过 dvi 转 hdmi 连接电视，通过 vga 链接电脑。不确定这个转接头的电脑端效果怎么样。  
我最终选择了方案三，同时我买了方案四五的 usb 转 dvi，3 米的线。。。  
结果我家瓷砖是 80\*80 不是 1m\*1m，1.5m 也够了，这样我就等着方案三来了试试效果，效果不好线就不退了，改成方案四五试一试
## 二次失败再次规划
新的 usb 转 hdmi 的线我试了一下，我无法把游戏拖动到电视上，拖过去就会死机，游戏就不动了。并且电视总是闪烁  
我选择了重新购买一个新的 usb 转 vga（也就是和第一次一样，换了一个牌子），用 vga 线连上客厅电脑，用买的一根 dvi 转 hdmi 连上客厅电视。  
这样可能导致电脑的显示器无法打游戏，也就是主屏幕出现一定的问题，但是出现这种问题我也没有办法了。
## 三次失败再次规划
来了新的 usb 转 vga，我受不了了，还是闪屏，电脑窗口无法进行游戏，那种游戏窗口都不动，我知道了，考虑之前的 usb 转 vga 迈拓维矩的出现的情况是掉帧，出现了不同的问题，因此应该不是我电脑本身的问题，应该是产品出现了不同的错误导致出现了不同的问题，应该是两个厂家的驱动都有问题。  
我选择直接购买了绿联的 usb 转 vga+hdmi，149，加上之前的 39 元的 hdmi 转 dvi 的线，大概 200 元进行改造，这回问题就不大了，便宜货确实是不行啊，对 win7 的兼容性不好。
## 四次失败再次规划
驴脸的也不行，当我昨天晚上发现驴脸也需要驱动的时候，一看，驱动都一样，我就知道坏了，果然绿联也不行。  
我考虑直接上 dvi 分配器了，目前的线刚刚好，一查发现不支持扩展模式，只支持复制，复制的话显示的分辨率就太低了啊。  
因此尝试 usb 转 dvi 转换器，要 229 元，发现这个转换器驱动和别的不一样，因此尝试一下，这是最后的办法，如果这个不行，就没有办法了，就把这个退了，不管怎么样 dvi 转 hdmi 的线就不退了，想打游戏的时候再连上。