---
aliases: []
created: 2021-01-29 16:24:27+08:00
date created: 2023-07-05T11:13:20+08:00
date modified: 2024-01-13T19:21:07+08:00
dg-publish: true
tags: []
title: 1005 字符指针和字符数组
updated: 2021-01-29 16:44:18+08:00
---

## 一、字符指针和字符数组的区别：
### 1.整体赋值
对字符串指针方式  
char \*ps="C Language";  
可以写为：  
 char \*ps;  
ps="C Language";  
而对数组方式：  
 static char st\[\]={"C Language"};  
不能写为：  
 char st\[20\];  
 st={"C Language"};  
而只能对字符数组的各元素逐个赋值。
### 2.开辟空间
当一个指针变量在未取得确定地址前使用是危险的，容易引起错误。  
一个错误的例子,如下:  
 char \*name;  
 scanf("%s",name);  
 printf("%s",name);  
有的编译器虽然也能通过，但这是错误的，因为是个指针,定义时指向不可用的地址。解决这个问题有两种方法: 用数组的方法或给字符针针分配内存空间的方法。  
 数组的方法：  
char name\[20\];  
 scanf("%s",name);  
 printf("%s",name);

给字符针针分配内存空间的办法：  
char \*name;  
name=(char\*)malloc(50); //此时 name 已经指向一个刚刚分配的地址空间。  
scanf("%s",name);  
 printf("%s",name);  
但是对指针变量直接赋值是可以的。因为 C 系统对指针变量赋值时要给以确定的地址。