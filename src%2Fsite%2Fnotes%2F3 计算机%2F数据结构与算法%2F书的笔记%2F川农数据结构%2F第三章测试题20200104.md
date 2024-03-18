---
aliases: []
created: 2021-01-04 15:53:15+08:00
date created: 2023-07-05T11:13:20+08:00
date modified: 2024-01-13T19:21:07+08:00
dg-publish: true
tags: []
title: 第三章测试题20200104
updated: 2021-01-15 15:31:36+08:00
---

第三章测试题  
入栈，先改 top 再给 top 赋值即先移动栈顶指针，在插入元素（因为 top 的结点有储存值）  
出栈，先返回值，再改指针（因为 top 的结点有储存值）  
入队，先改 rear 再存入值（因为 rear 结点有值）  
出队，先改 front 再取出出队的元素（顺序队因为 front 不储存值，链队因为要释放结点空间）

队列插入运算有可能修改头指针，一定修改尾指针  
队列删除运算一定修改头指针，可能修改尾指针

具体题目：  
![image1](/img/user/resources/attachments/image1-48.png)  
选 b，不考虑乱出乱入

![image2](/img/user/resources/attachments/image2-24.png)  
选 b，链表做栈，入栈不用判别  
![image3](/img/user/resources/attachments/image3-14.png)  
选 B，没说是循环队不选 c，如果队头存值就是 rear-front+1==m0，队头指针不储存值。  
![image4](/img/user/resources/attachments/image4-11.png)  
二进制转十六进制算法，用栈  
![image5](/img/user/resources/attachments/image5-8.png)  
b 平移元素的方法，每添加一次元素，所有元素前移一个位置  
![image6](/img/user/resources/attachments/image6-7.png)  
第一次做这种，很难把表达式还原成树