---
aliases: []
created: 2021-01-18 13:34:45+08:00
date created: 2023-07-05T21:38:32+08:00
date modified: 2024-01-14T16:45:16+08:00
dg-publish: true
tags: []
title: 20210118第八章复习
updated: 2021-01-18 16:28:40+08:00
---

## 第八章 函数

### 函数的定义与性质
函数是一种特殊的二元关系。若任取 x 属于 domF 都存在唯一的 y 属于 ranF 使 xFy 成立，则称 F 为函数，对于函数 F，如果有 xFy，则记作 y=F（x），并称 y 为 F 在 x 的值

F，G 为函数，则 F=G\<=\>F 包含于 G 合取 G 包含于 F  
F、G 相等满足以下条件：  
![image1](/img/user/resources/attachments/image1-11 3.png)  
![image2](/img/user/resources/attachments/image2-10 3.png)

![image3](/img/user/resources/attachments/image3-7 2.png)

所有从 A 到 B 的函数的集合记作 B^A，读作 B 上 A，B^A={f\|f:A→B}

设函数 f:A→B,A1 包含于 A，B1 包含于 B。  
（1）令 f（A1）={f(x)\|x 属于 A1}，称 f(A1) 为 A1 在 f 下的像，特别地，当 A1=A 时，称 f(A) 为函数的像  
（2）令 f^-1(B1)={x\|x 属于 A 合取 f(x) 属于 B1}，称 f^-1(B1) 为 B1 在 f 下的完全原像。

设 f：A-\>B,  
（1）若 ranf=B，则称 f：A-\>B 是满射的。  
（2）若任取 y 属于 ranf 都存在唯一的 x 属于 A 使得 f(x)=y，则称 A-\>B 是单设的  
（3）若 f：A-\>B 即是满射又是单设，则称 f：A-\>B 是双摄的（或一一映像）

恒等关系 Ia 为恒等函数  
两个偏序集的映射，如果 x1\<x2 映射过去 f(x1)\<f(x2) 就说是严格单调递减函数  
特征函数是 A 的子集的函数，取值在该子集里就是 1，不在就是 0  
自然映射是 A--\>A/R，元素对集合的映射。