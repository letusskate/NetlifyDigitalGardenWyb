---
aliases: []
created: 2022-03-03 21:34:10+08:00
date created: 2023-07-05T11:13:20+08:00
date modified: 2024-01-13T19:21:09+08:00
dg-publish: true
tags: []
title: 素数
updated: 2022-03-05 11:59:26+08:00
---

## 检查 n 是否为素数
int gg(int n)  
{  
for(int i=2;i\*i\<=n;i++){  
if((n%i)==0)return 0;  
}  
return 1;  
}

## 爱是筛法
int a\[maxx\];  
int b\[maxx+1\];  
int gg(int n)  
{  
int p=0;//记录素数个数  
for(int i=0;i\<n+1;i++)b\[i\]=1;  
b\[0\]=0;  
b\[1\]=0;  
//准备完毕  
for(int i=2;i\<=n;i++){  
if(b\[i\]){  
a\[p++\]=i;//记录素数和个数  
for(int j=2\*i;j\<=n;j+=i)b\[j\]=0;//剔除倍数  
}  
}  
return p;//返回素数个数  
}

## 区间筛法
//不 gg 了，这次就来个标准一点的吧  
typedef long long ll;  
bool is_prime\[maxn\];  
bool is_prime_small\[maxn\];  
void segment_sieve(ll a,ll b)  
{  
for(ll i=0;i\*i\<b;++i) is_prime_small\[i\]=true; //初始化  
for(ll i=0;i\<b-a;++i) is_prime\[i\]=true; //初始化，注意下标变化，为了省空间  
for(ll i=2;i\*i\<b;++i) {  
if(is_prime_small\[i\]) {  
for(ll j=2\*i;j\*j\<b;j+=i) is_prime_small\[j\]=false; //筛选\[2,sqrt(b));  
//(a+i-1)/i 得到最接近 a 的 i 的倍数，最低是 i 的 2 倍，然后筛选  
for(ll j=max(2LL,(a+i-1)/i)\*i;j\<b;j+=i) is_prime\[j-a\]=false;  
}  
}  
}