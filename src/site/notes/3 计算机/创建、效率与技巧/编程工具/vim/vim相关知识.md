---
aliases: []
created: 2022-12-03 19:59:20+08:00
date created: 2023-07-05T11:13:20+08:00
date modified: 2024-01-13T19:21:07+08:00
dg-publish: true
tags: []
title: vim相关知识
updated: 2022-12-03 23:02:11+08:00
---

## vim 相关知识
### vim 开源地址
[GitHub - vim/vim: The official Vim repository](https://github.com/vim/vim)
### vim 下载地址
[download : vim online](https://www.vim.org/download.php)
### vim 地位
是编程的最高境界。  
![image1](/img/user/resources/attachments/image1 1.gif)

![image2](/img/user/resources/attachments/image2-7 2.png)
### vim 的基本概念
vim 是一款多模式的编辑器，vim 有很多的模式，这里主要讲解 3 种模式，分别是命令模式（command mode）、插入模式（Insert mode）和底行模式（last line mode），各模式的功能区分如下：
#### 正常/普通/命令模式 (Normal mode)
控制屏幕光标的移动，字符、字或行的删除，移动复制某区段及进入 Insert mode 下，或者到 last line mode
#### 插入模式 (Insert mode) 
只有在 Insert mode 下，才可以做文字输入，按「ESC」键可回到命令行模式。该模式是我们后面用的最频繁的编辑模式。
#### 底行模式 (last line mode) 
文件保存或退出，也可以进行文件替换，找字符串，列出行号等操作。 在命令模式下，shift+: 即可进入该模式。要查看你的所有模式：打开 vim，底行模式直接输入 : help vim-modes
### word 与 WORD
word 和 WORD 是不同的。word 以符号或空格分隔字符串，连续的字符、连续的符号被视为同一个 word；WORD 仅以空格分割字符串。  
程序中，很多数组、函数等可能是一个 WORD，但却是多个 word。