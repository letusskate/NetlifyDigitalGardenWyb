---
aliases: []
created: 2022-12-09 17:55:20+08:00
date created: 2023-07-05T11:13:20+08:00
date modified: 2024-01-13T19:21:06+08:00
dg-publish: true
tags: []
title: windows自动关机
updated: 2022-12-15 14:34:49+08:00
---

1、界面左下角搜索栏搜索“控制面板”，打开“控制面板”  
2、然后点击控制面板里的“管理工具”  
![image1](/img/user/resources/attachments/image1 3.jpg)  
3、在管理工具里点击“计划任务程序”  
4、先点击下任务计划程序库，然后在中间的空白位置点击右键，选择“创建基本任务”，也可以点击右边的“创建基本任务”  
![image2](/img/user/resources/attachments/image2 2.jpg)  
5、给定时关机的任务取个名字，如“定时关机”，然后点击“下一步”  
![image3](/img/user/resources/attachments/image3 2.jpg)  
6、选择关机任务从什么时候开始，根据自己需要选择  
7、设置定时关机的时间段，选择定时关机每隔多长时间发生一次，如图：  
![image4](/img/user/resources/attachments/image4 1.jpg)  
8、选择任务执行的操作为启动程序，如图：  
![image5](/img/user/resources/attachments/image5 1.jpg)  
9、点击“程序或脚本”后面的浏览进行选择执行的程序，要是知道程序路径就可以直接填写程序，填上 shutdown 命令，这里参数设置 -s 表示关机  
![image6](/img/user/resources/attachments/image6 1.jpg)  
10、选择“是”来确定，如图：  
![image7](/img/user/resources/attachments/image7 2.jpg)  
11、此界面选择“完成”，结束自动关机的计划任务设置，如图：  
![image8](/img/user/resources/attachments/image8 1.jpg)  
12、设置好后,在任务列表里就可以看定时关机任务了，如图：  
![image9](/img/user/resources/attachments/image9 1.jpg)

*来自 \<<https://zhidao.baidu.com/question/2083085551741391468.html>\>*