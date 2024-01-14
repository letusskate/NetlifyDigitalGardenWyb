---
aliases: []
created: 2021-01-30 12:05:03+08:00
date created: 2023-07-05T11:13:20+08:00
date modified: 2024-01-13T19:21:07+08:00
dg-publish: true
tags: []
title: 1009 多项式乘法
updated: 2021-01-30 13:13:58+08:00
---

//我开了两个 hang 数组，实际上 1 个就可以，第二个一边读一边算  
\#include\<bits/stdc++.h\>  
usingnamespacestd;  
doubleline1\[1005\],line2\[1005\];  
doubleall\[2010\];  
intmain(){  
intlen1,len2;  
//写在外面的数组初始化就是 0 不用初始化，里面声明就要 memset  
intcishu;  
doublexi;//这里一开始是 int，检查了很久没检查出来  
scanf("%d",&len1);  
for(inti=0;i\<len1;i++){  
scanf("%d%lf",&cishu,&xi);  
line1\[cishu\]=xi;  
}  
scanf("%d",&len2);  
for(inti=0;i\<len2;i++){  
scanf("%d%lf",&cishu,&xi);  
line2\[cishu\]=xi;  
}

for(inti=0;i\<1005;i++){  
if(line1\[i\]==0)  
continue;  
for(intj=0;j\<1005;j++){  
if(line2\[j\]==0)  
continue;  
else{  
//if(all\[i+j\]==0.0)  
//cnt++;//这里算 cnt 会出现问题，如果一个 1，一个 -1，cnt 应该是 0  
all\[i+j\]=all\[i+j\]+line1\[i\]\*line2\[j\];  
}  
}  
}  
intcnt=0;  
for(inti=2000;i\>=0;i--){//在这里算 cnt  
if(all\[i\]!=0.0)  
cnt++;  
}  
printf("%d",cnt);  
for(inti=2009;i\>=0;i--){  
if(all\[i\]!=0.0)  
printf("%d%.1lf",i,all\[i\]);  
}  
printf("\n");  
}  
/\*  
//pat 甲级 1002 题要求实现了多项式加法，多项式乘法比多项式加法稍微复杂一点，需要一个多项式的每一项与另外一个多项式的每一项相乘，然后合并同类项。在此过程中，需要保存好被乘的那个多项式，为此，可以开辟一个 double 数组存储第一个多项式，其中数组下标表示指数，数组元素表示系数，另外再开辟一个 double 数组 result 储存多项式相乘结果。在读取第二个多项式的过程中直接用第二个多项式的每一项与存储好的第一个多项式的每一项相乘并将结果保存至 result 数组。然后按要求输出 result 数组即可。  
//（1）如果两个多项式相加后没有系数非 0 的项，应该只输出 "0"，后面不能跟空格  
//（2）两个多项式中某一项相乘并合并同类项后系数是 0，就不能输出这一项，前面计算项数时，也不能把这一项算进去。  
//（3）多项式最高指数不超过 1000，但是相乘之后指数可以达到 2000，所以 result 数组至少要开到 2000  
\#include\<bits/stdc++.h\>  
usingnamespacestd;  
doubleA\[1005\],result\[2005\];  
intmain(){  
intK,a,size=0;  
doubleb;  
scanf("%d",&K);  
while(K--){//读取第一个多项式存储到 A 数组中  
scanf("%d%lf",&a,&b);  
A\[a\]=b;  
}  
scanf("%d",&K);  
while(K--){//读取第二个多项式  
scanf("%d%lf",&a,&b);  
for(inti=0;i\<1005;++i)  
result\[a+i\]+=A\[i\]\*b;//将相乘结果报错到 result 中  
}  
for(inti=0;i\<2005;++i)//统计系数不为 0 的项数  
if(result\[i\]!=0.0)  
++size;  
printf("%d",size);  
for(inti=2005;i\>=0;--i)//输出每一项  
if(result\[i\]!=0.0)  
printf("%d%.1f",i,result\[i\]);  
return0;  
}  
\*/