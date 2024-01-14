---
aliases: []
created: 2020-06-02 20:11:03+08:00
date created: 2023-07-05T11:13:20+08:00
date modified: 2024-01-13T19:21:06+08:00
dg-publish: true
tags: []
title: 20200602 课堂笔记
updated: 2020-07-14 13:46:18+08:00
---

intmain(void)  
{  
inti=520;  
printf("before,i=%d\n",i);  
for(inti=0;i\<10;i++)  
{  
printf("%d\n",i);  
}  
printf("after,i=%d\n",i);  
return0;  
}

结束后 i=520，定义在 for 的括号里的变量，作用域是整个 for 循环。