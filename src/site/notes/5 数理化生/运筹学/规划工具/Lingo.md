---
{"dg-publish":true,"permalink":"/5 数理化生/运筹学/规划工具/Lingo/","title":"Lingo"}
---


## sum 设置从 m 到 k 求和
无法实现，可以通过前缀和为变量，通过 if 判断是否为第一个数值实现。  
@for(n(i):@for(t(j):@free(@if(j#eq#1,r(i,j),r(i,j)-r(i,j-1)))));

## 取消非负限制
@free

## 变量定界函数
![image1](/img/user/resources/attachments/image1-1 5.png)
## lingo 灵敏度分析
详见川农运筹学实验作业。

## Lingo global solve
有时候需要求解全局最优，就需要设置，在 option 的 global solver 勾选上。  
![image2](/img/user/resources/attachments/image2-1 5.png)

## lingo 报错与处理
### The model generator ran out of memory
LINGO 模型生成器的内存已经用尽 (可用“LINGO\|Options" 命令对 General Solver 选项卡中的“Generator Memory Limit" 选项进行内存大小的修改)  
我自己测试，是在 options 的 model generator 里面。