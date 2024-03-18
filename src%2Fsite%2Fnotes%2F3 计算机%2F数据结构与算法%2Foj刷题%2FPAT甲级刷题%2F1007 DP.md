---
aliases: []
created: 2021-01-29 17:08:28+08:00
date created: 2023-07-05T11:13:20+08:00
date modified: 2024-01-13T19:21:07+08:00
dg-publish: true
tags: []
title: 1007 DP
updated: 2021-01-30 11:13:44+08:00
---

/\*  
//我自己写的代码，核心思路在：从《0 到 j 的序列的最大和子序列》要么是《从 0 到 j-1 的最大和子序列》要么是《j》要么是《从‘从 0 到 j-1 的最大和子序列的起始点’开始一直加到 j》  
//我的思路的错误：如果出现 1，-10000，0.9，2 这样的序列，我会认为最大和子序列是 2，但实际上是 0.9，2。  
//错误的精髓：对于只要 j 这种情况考虑不充分，认为要么只要 j，要么从上一个最大和子序列起点开始一只加到 j。  
//下次怎么做：动态规划考虑转移方程的时候，要不断修正状态标定方法，达到转移方程清晰不出错，时间空间合格的程度。  
usingnamespacestd;  
\#include\<bits/stdc++.h\>  
intmain(){  
intK;  
scanf("%d",&K);  
intnums\[K\];  
for(inti=0;i\<K;i++)  
scanf("%d",&nums\[i\]);  
intbegin=nums\[0\],end=nums\[0\],maxsum=INT_MIN,begintoall=0;  
for(inti=0;i\<K;i++){  
//不需要讨论新数是不是负数，负数的情况包含在正数里  
if(begintoall+nums\[i\]\>maxsum&&begintoall+nums\[i\]\>nums\[i\]){  
end=nums\[i\];  
maxsum=begintoall+nums\[i\];  
begintoall=begintoall+nums\[i\];  
}  
elseif(begintoall+nums\[i\]\>maxsum&&begintoall+nums\[i\]==nums\[i\]){  
//begin=nums\[i\];  
end=nums\[i\];  
maxsum=nums\[i\];  
begintoall=nums\[i\];  
}  
elseif(begintoall+nums\[i\]==maxsum&&begintoall+nums\[i\]\>nums\[i\]){  
begintoall=begintoall+nums\[i\];  
}  
elseif(begintoall+nums\[i\]==maxsum&&begintoall+nums\[i\]==nums\[i\]){  
begintoall=begintoall+nums\[i\];  
}  
elseif(nums\[i\]\>maxsum){  
begin=nums\[i\];  
end=nums\[i\];  
maxsum=nums\[i\];  
begintoall=nums\[i\];  
}  
elseif(nums\[i\]\<=maxsum){  
begintoall=begintoall+nums\[i\];  
}  
}  
if(maxsum\<0){  
begin=nums\[0\];  
end=nums\[K-1\];  
maxsum=0;  
}  
printf("%d%d%d\n",maxsum,begin,end);  
return0;  
}  
\*/  
//大神的代码  
//这是一道动态规划的题目，如果将以 A\[i\] 结尾的最大子序列和存储在 dp\[i\] 中的话，  
//那么 dp\[i\]=max(dp\[i-1\]+A\[i\],A\[i\])，利用这个状态转移方程即可求出结果。  
\#include\<bits/stdc++.h\>  
usingnamespacestd;  
intmain(){  
intN,maxIndex=0;//maxIndex 存储最大子序列末尾数字所在索引  
scanf("%d",&N);  
intA\[N\];  
for(inti=0;i\<N;++i)  
scanf("%d",&A\[i\]);  
pair\<int,int\>dp\[N\]={{A\[0\],0}};//first 元素存储子序列和，second 元素存储子序列起始位置  
for(inti=1;i\<N;++i){  
if(A\[i\]\<=dp\[i-1\].first+A\[i\])  
dp\[i\]={dp\[i-1\].first+A\[i\],dp\[i-1\].second};  
else  
dp\[i\]={A\[i\],i};  
if(dp\[i\].first\>dp\[maxIndex\].first)//更新最大子序列末尾数字所在索引  
maxIndex=i;  
}  
if(dp\[maxIndex\].first\<0)//如果最大子序列和\<0，说明都是负数  
printf("0%d%d",A\[0\],A\[N-1\]);  
else  
printf("%d%d%d",dp\[maxIndex\].first,A\[dp\[maxIndex\].second\],A\[maxIndex\]);  
return0;  
}