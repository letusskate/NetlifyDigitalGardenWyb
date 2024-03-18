---
aliases: []
created: 2022-03-04 15:09:55+08:00
date created: 2023-07-05T11:13:20+08:00
date modified: 2024-01-13T19:21:06+08:00
dg-publish: true
tags: []
title: 输出
updated: 2022-03-04 15:10:07+08:00
---

cout 输出指定位数，不足补 0  
\#include \<iostream\>  
\#include\<iomanip\>  
using namespace std;  
int main()  
{  
int a;  
cin\>\>a;  
cout\<\<setw(3)\<\<setfill('0')\<\<a\<\<endl;  
return 0;  
}