---
aliases: []
created: 2022-06-17 20:47:01+08:00
date created: 2023-07-05T11:13:20+08:00
date modified: 2024-01-13T19:21:06+08:00
dg-publish: true
tags: []
title: map
updated: 2022-06-17 20:47:12+08:00
---

## map
访问值为 key 时的 value。 mp\[key\]

查看 key 是否存在。 mp.count(key) 为 1 则存在，为 0 则不存在。

map 的遍历方法一  
usingnamespace std;  
map\<char,string\> mp;  
map\<char,string\>::iterator it;  
intmain(intargc, charconst\*argv\[\])  
{  
mp\['0'\]="0000";mp\['1'\]="0001";mp\['2'\]="0010";  
mp\['3'\]="0011";mp\['4'\]="0100";mp\['5'\]="0101";  
mp\['6'\]="0110";mp\['7'\]="0111";mp\['8'\]="1000";  
mp\['9'\]="1001";mp\['A'\]="1010";mp\['B'\]="1011";  
mp\['C'\]="1100";mp\['D'\]="1101";mp\['E'\]="1110";  
mp\['F'\]="1111";  
for(it = mp.begin(); it != mp.end(); it++)  
cout\<\<it-\>first\<\<":"\<\<it-\>second\<\<endl;  
//it-\>first 下标的值，it-\>second 所在下标的值 return0;  
}

map 的遍历方法二  
for(auto it : m) ans.push_back({it.first, it.second});