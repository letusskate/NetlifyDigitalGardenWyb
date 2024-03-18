---
aliases: []
created: 2022-12-05 16:46:13+08:00
date created: 2023-07-05T11:13:20+08:00
date modified: 2024-01-14T16:45:16+08:00
dg-publish: true
tags: []
title: 次模函数Submodular function
updated: 2023-01-01 16:05:44+08:00
---

## 形象理解次模性
### 边际效应递减
获得的商品越多，单件商品带来的满足越少。  
通俗的说就是你把所有商品看成一个集合，随着你所拥有的物品数量的增加，那么你获得剩下物品所得到的满足程度越来越小。
### 雷达覆盖
对于同一个地方，在雷达覆盖范围比较小的时候加入一个雷达 (左图)，它的效果肯定比在雷达覆盖范围比较大的时候加一个雷达的效果要好 (右图)。  
![image1](/img/user/resources/attachments/image1-31 1.png)
### 锦上添花与雪中送炭
雪中送炭价值高于锦上添花，就是次模性。
### 函数斜率
也就是函数的斜率不增（可以减小为负数）  
如抛物线，y=-e\*\*x
## 次模函数定义
### 定义一
![image2](/img/user/resources/attachments/image2-17 1.png)
### 定义二
![image3](/img/user/resources/attachments/image3-9 1.png)
## 次模函数定理
### 定理一
![image4](/img/user/resources/attachments/image4-6 1 1.png)
### 定理二
![image5](/img/user/resources/attachments/image5-3 1 1.png)
### 定理三
![image6](/img/user/resources/attachments/image6-3 1.png)

## 次模函数性质
### 性质 1
在计算机领域，Submodular 函数有个性质，即下面这个问题是 NP-hard.  
对于一个 sugmodular 函数 f，如果给定一个限制条件 C，找出一个满足条件 C 的集合 S，使得 f(S) 值最大。  
![image7](/img/user/resources/attachments/image7-1 3.png)
### 性质 2
Submodular 函数的迷人之处在于，它的 maximization 有非常高效同时又有理论保证的贪心算法，而 minimization 与 convex optimization 又有深刻的联系。此外这几年很多文章都在说明分布式和数据流形式的 submodular optimization 也有很好的近似算法。
### 性质 3 长度限制下，求解最优集合
![image8](/img/user/resources/attachments/image8-1 3.png)  
可以证明上述算法的近似程度为 (1- 1/e)
### 性质 4 成本限制下，求解最优集合
![image9](/img/user/resources/attachments/image9-1 3.png)  
在这种约束下，有很多种不同的贪婪策略，不同的策略会有不同的界，一个最简单的策略就是从每次选择最大提升的元素加入 S，变成每次选择性价比最高元素加入集合 S。
### 性质 5 拟阵约束下，求解最优集合
那么什么时候，贪婪算法可以得到最优解呢？ 答案是，如果我们在搜索子集的时候，搜索空间中所有的子集都是“独立”的，那么我们是有可能用贪婪算法找到最优解的。而 Matriod 定义了这么一种独立的性质  
![image10](/img/user/resources/attachments/image10-1 4.png)

## 相关帖子
<https://zhuanlan.zhihu.com/p/52512602>  
**  
**  
**  
**  
**  
**  
**