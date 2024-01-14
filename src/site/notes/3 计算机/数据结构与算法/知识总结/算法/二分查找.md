---
aliases: []
created: 2022-03-03 18:52:39+08:00
date created: 2023-07-05T11:13:20+08:00
date modified: 2024-01-13T19:21:09+08:00
dg-publish: true
tags: []
title: 二分查找
updated: 2022-03-05 11:59:37+08:00
---

算法思路  
假设目标值在闭区间 \[left, right\] 中， 每次将区间长度缩小一半，当 left == right 时，就找到了目标值。

![image1](/img/user/resources/attachments/image1-57.png)

模板 1  
目标值 = 红色区间的第一个值。

如果 middle 落在红色区间，则有

\[L,R\]→\[L,M\]  
\[L,R\]→\[L,M\]  
R=M  
R=M  
反之，middle 落在蓝色区间，则有

\[L,R\]→\[M+1,R\]  
\[L,R\]→\[M+1,R\]  
L=M+1  
L=M+1  
模板 1 中，middle 的更新 = 边界中值的向下取整

M=⌊L+R2⌋  
M=⌊L+R2⌋  
// 二分查找 模板 1  
int binarySearch(vector\<int\>& a, int target) {  
int left = 0;  
int right = a.size() - 1;

while (left \< right) {  
int middle = (left + right) \>\> 1;  
if (isRed(a\[middle\]))  
right = middle;  
else  
left = middle + 1;  
}

return left;  
}  
模板 2  
目标值 = 蓝色区间的最后一个值。

如果 middle 落在蓝色区间，则有

\[L,R\]→\[M,R\]  
\[L,R\]→\[M,R\]  
L=M  
L=M  
反之，middle 落在红色区间，则有

\[L,R\]→\[L,M−1\]  
\[L,R\]→\[L,M−1\]  
R=M−1  
R=M−1  
模板 2 中，middle 的更新 = 边界中值的向上取整

M=⌈L+R2⌉  
M=⌈L+R2⌉  
// 二分查找 模板 2  
int binarySearch(vector\<int\>& a, int target) {  
int left = 0;  
int right = a.size() - 1;

while (left \< right) {  
int middle = (left + right + 1) \>\> 1; // 防止死循环  
if (isBlue(a\[middle\]))  
left = middle;  
else  
right = middle - 1;  
}

return left;  
}  
模板 3  
ALGS4 上的二分查找的代码，适用于判断确切的某一个目标值是否在区间内的情况，不需要考虑如何切分区间。

// 二分查找 模板 3  
int binarySearch(vector\<int\>& a, int target) {  
int left = 0;  
int right = a.size() - 1;

while (left \<= right) {  
int middle = (left + right) \>\> 1;  
if (a\[middle\] \< target)  
middle = left + 1;  
else if (a\[middle\] \> target)  
middle = right - 1;  
else  
return middle;  
}

return -1;  
}

作者：stOOrz  
链接：https://www.acwing.com/blog/content/2213/  
来源：AcWing  
著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。