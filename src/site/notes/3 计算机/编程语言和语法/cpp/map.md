---
{"dg-publish":true,"permalink":"/3 计算机/编程语言和语法/cpp/map/","title":"map"}
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