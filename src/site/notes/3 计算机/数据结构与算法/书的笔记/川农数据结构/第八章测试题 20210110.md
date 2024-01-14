---
aliases: []
created: 2021-01-10 10:44:23+08:00
date created: 2023-07-05T11:13:20+08:00
date modified: 2024-01-13T19:21:08+08:00
dg-publish: true
tags: []
title: 第八章测试题 20210110
updated: 2021-01-12 14:27:22+08:00
---

感觉要分清邻接表的结点是什么东西，包不包含表头？
## 错题
### 第一次
3

在一个具有 n 个顶点的有向完全图中，所含的边数为（）。（4.0 分）

**0.0**分
- A、  
  [n（n+1）/2](javascript:void(0);)
- B、  
  [n（n-1）](javascript:void(0);)
- C、  
  [n](javascript:void(0);)
- D、  
  [n（n-1）/2](javascript:void(0);)  
我的答案：D

正确答案：B

真是的，这是有向图！！！！图，做题，先看是有向还是无向

13

若一个图的边集为{（A,B）,(A,C),(B,D),(C,F),(D,E),(D,F)},则从顶点 A 开始对该图进行深度优先搜索，得到的顶点序列可能为（）。（4.0 分）

**0.0**分
- A、  
  [A,C,F,D,E,B](javascript:void(0);)
- B、  
  [A,B,C,F,D,E](javascript:void(0);)
- C、  
  [A,B,D,C,F,E](javascript:void(0);)
- D、  
  [A,B,D,F,E,C](javascript:void(0);)  
我的答案：D

正确答案：A

A：认为是无向图 DFS

B：认为是有向图或无向图都行，BFS

C：无论如何都不对

D：认为是有向图 DFS

### 第二次

6

设图的邻接矩阵为

![image1](/img/user/resources/attachments/image1-51.png)

，则该图为（）。

（4.0 分）

**0.0**分
- A、  
  [无向图](javascript:void(0);)
- B、  
  [强连通图](javascript:void(0);)
- C、  
  [有向图](javascript:void(0);)
- D、  
  [完全图](javascript:void(0);)  
我的答案：A

正确答案：C

这是有向无向分不清？？

13

设连通图 G 中的边集 E={(a，b)，(a，e)，(a，c)，(b，e)，(e，d)，(d，f)，(f，c)}，则从顶点 a 出发可以得到一种深度优先遍历的顶点序列为（）。（4.0 分）

**0.0**分
- A、  
  [abedfc](javascript:void(0);)
- B、  
  [aebdfc](javascript:void(0);)
- C、  
  [acfebd](javascript:void(0);)
- D、  
  [aedfcb](javascript:void(0);)  
我的答案：A

正确答案：搜题软件是 C，acfebd，可是真正答案绝对不是 C

A 当作有向图无向图都对，B 必须是无向图，C 无论如何都不对，D 当作有向图无向图都对。

### 第三次
16

设某强连通图中有 n 个顶点，则该强连通图中至少有（）条边。（4.0 分）

**0.0**分
- A、  
  [n+1](javascript:void(0);)
- B、  
  [n(n-1)](javascript:void(0);)
- C、  
  [n-1](javascript:void(0);)
- D、  
  [n)](javascript:void(0);)  
我的答案：D

这题就是 N，我之前上一遍做 n 是对的，这一遍就错了，这答案还能改的吗
## 真的错题

### 第二次
13

设连通图 G 中的边集 E={(a，b)，(a，e)，(a，c)，(b，e)，(e，d)，(d，f)，(f，c)}，则从顶点 a 出发可以得到一种深度优先遍历的顶点序列为（）。（4.0 分）

**0.0**分
- A、  
  [abedfc](javascript:void(0);)
- B、  
  [aebdfc](javascript:void(0);)
- C、  
  [acfebd](javascript:void(0);)
- D、  
  [aedfcb](javascript:void(0);)  
我的答案：A

正确答案：搜题软件是 C，acfebd，题库答案确实是 C，可是真正答案绝对不是 C，

A 当作有向图无向图都对，B 必须是无向图，C 无论如何都不对，D 当作有向图无向图都对。

### 第三次
2

已知一个有向图的邻接表存储结构如图所示，根据深度优先遍历算法，从顶点 v1 出发，所得到的顶点序列是（）。

![image2](/img/user/resources/attachments/image2-26.png)

（4.0 分）

**4.0**分
- A、  
  [v1,v2,v3,v5,v4](javascript:void(0);)
- B、  
  [v1,v2,v3,v4,v5](javascript:void(0);)
- C、  
  [v1,v4,v3,v5,v2](javascript:void(0);)
- D、  
  [v1,v3,v4,v2，v5](javascript:void(0);)  
我的答案：C

复习题发现了是错题，无正确答案，不应该选 C

16

设某强连通图中有 n 个顶点，则该强连通图中至少有（）条边。（4.0 分）

**0.0**分
- A、  
  [n+1](javascript:void(0);)
- B、  
  [n(n-1)](javascript:void(0);)
- C、  
  [n-1](javascript:void(0);)
- D、  
  [n)](javascript:void(0);)  
我的答案：D

这题正确答案就是 N，因为强连通图必然是有向图，因此只有构成一个环才满足题意。之前上一遍做选 n 是对的，这一遍就错了，是不是改答案改错了。
## 做的时候不确定
### 第一次
6

在无向图中定义顶点 vi 与 vj 之间的路径为从 vi 到 vj 的一个（）。（4.0 分）
- A、  
  [边序列](javascript:void(0);)
- B、  
  [顶点序列](javascript:void(0);)
- C、  
  [权值总和](javascript:void(0);)
- D、  
  [边的条数](javascript:void(0);)  
B。百度说 B

10

对于一个具有 n 个顶点的图，若采用邻接矩阵表示，则矩阵大小至少为（）。（4.0 分）
- A、  
  [n\*n](javascript:void(0);)
- B、  
  [(n-1)\*(n-1)](javascript:void(0);)
- C、  
  [(n-1)\*n](javascript:void(0);)
- D、  
  [(n+1)\*n](javascript:void(0);)  
A，想多了，想把自己到自己那个去了，没必要

13

若一个图的边集为{（A,B）,(A,C),(B,D),(C,F),(D,E),(D,F)},则从顶点 A 开始对该图进行深度优先搜索，得到的顶点序列可能为（）。（4.0 分）
- A、  
  [A,C,F,D,E,B](javascript:void(0);)
- B、  
  [A,B,C,F,D,E](javascript:void(0);)
- C、  
  [A,B,D,C,F,E](javascript:void(0);)
- D、  
  [A,B,D,F,E,C](javascript:void(0);)  
D，这种边集很可能是有向图

17

设 G1=(V1,E1) 和 G2=(V2,E2) 为两个图，如果 V1Í（可能是包含于）V2,E1Í（可能是包含于）E2 则称（）。（4.0 分）
- A、  
  [G1是G2的子图](javascript:void(0);)
- B、  
  [G1是G2的连通分量](javascript:void(0);)
- C、  
  [G2是G1的子图](javascript:void(0);)
- D、  
  [G2是G1的连通分量](javascript:void(0);)  
A。百度 A

### 第二次
2

当 n 个顶点的无向图 G 的顶点度数的最小值大于或者等于 () 时，G 至少有一条回路。（4.0 分）
- A、  
  [n+1](javascript:void(0);)
- B、  
  [n+2](javascript:void(0);)
- C、  
  [n](javascript:void(0);)
- D、  
  [n-1](javascript:void(0);)  
C。

13

设连通图 G 中的边集 E={(a，b)，(a，e)，(a，c)，(b，e)，(e，d)，(d，f)，(f，c)}，则从顶点 a 出发可以得到一种深度优先遍历的顶点序列为（）。（4.0 分）
- A、  
  [abedfc](javascript:void(0);)
- B、  
  [aebdfc](javascript:void(0);)
- C、  
  [acfebd](javascript:void(0);)
- D、  
  [aedfcb](javascript:void(0);)  
A。A 当作有向图无向图都对，B 必须是无向图，C 无论如何都不对，D 当作有向图无向图都对。

19

设某强连通图中有 n 个顶点，则该强连通图中至少有（）条边。（4.0 分）
- A、  
  [n(n-1)](javascript:void(0);)
- B、  
  [n)](javascript:void(0);)
- C、  
  [n-1](javascript:void(0);)
- D、  
  [n+1](javascript:void(0);)  
B。想想应该是一个环

### 第三次
2

已知一个有向图的邻接表存储结构如图所示，根据深度优先遍历算法，从顶点 v1 出发，所得到的顶点序列是（）。

![image2](/img/user/resources/attachments/image2-26.png)

（4.0 分）
- A、  
  [v1,v2,v3,v5,v4](javascript:void(0);)
- B、  
  [v1,v2,v3,v4,v5](javascript:void(0);)
- C、  
  [v1,v4,v3,v5,v2](javascript:void(0);)
- D、  
  [v1,v3,v4,v2，v5](javascript:void(0);)  
C。之前尝试过，D、A

错题

10

图中的一条路径长度为 k，该路径所含的顶点数为 ()。（4.0 分）
- A、  
  [k+1](javascript:void(0);)
- B、  
  [k-1](javascript:void(0);)
- C、  
  [k+2](javascript:void(0);)
- D、  
  [k](javascript:void(0);)  
A。

17

邻接表是图的一种（）。（4.0 分）
- A、  
  [散列存储结构](javascript:void(0);)
- B、  
  [索引存储结构](javascript:void(0);)
- C、  
  [链式存储结构](javascript:void(0);)
- D、  
  [顺序存储结构](javascript:void(0);)  
C。

18

在一个具有 n 个顶点的有向图中，若所有顶点的出度数之和为 s，则所有顶点的度数之和为（）。（4.0 分）
- A、  
  [s](javascript:void(0);)
- B、  
  [2s](javascript:void(0);)
- C、  
  [s-1](javascript:void(0);)
- D、  
  [s+1](javascript:void(0);)  
B，不确定

20

具有 50 个顶点的无向图至少应有（）条边才能确保是一个连通图。（4.0 分）
- A、  
  [99](javascript:void(0);)
- B、  
  [49](javascript:void(0);)
- C、  
  [100](javascript:void(0);)
- D、  
  [48](javascript:void(0);)  
B。实际上确保是联通图至少要超过 49\*（49-1）/2+1 条边

22

设无向图 G 中有 n 个顶点 e 条边，则用用邻接表作为图的存储结构进行深度优先或广度优先遍历的时间复杂度为（）

（4.0 分）
- A、  
  [O(n)](javascript:void(0);)
- B、  
  [O(1)](javascript:void(0);)
- C、  
![image3](/img/user/resources/attachments/image3-16.png)
- D、  
  [O(n+e)](javascript:void(0);)  
D，感觉是 C 或 D

25

对于一个具有 n 个顶点和 e 条边的无向图，若采用邻接表表示，则表头向量的大小为（）（4.0 分）
- A、  
  [n+1](javascript:void(0);)
- B、  
  [n-1](javascript:void(0);)
- C、  
  [n](javascript:void(0);)
- D、  
  [n+e](javascript:void(0);)  
C。n 个点所以是 n

### 第四次
16

对于一个具有 n 个顶点的无向连通图，它包含的连通分量的个数为（）。（4.0 分）
- A、  
  [n](javascript:void(0);)
- B、  
  [0](javascript:void(0);)
- C、  
  [1](javascript:void(0);)
- D、  
  [n+1](javascript:void(0);)  
C。搜题软件说 1

19

如果 n 个顶点的图是一个环，则它有 () 棵生成树。（4.0 分）
- A、  
  [2](javascript:void(0);)
- B、  
  [n](javascript:void(0);)
- C、  
  [1](javascript:void(0);)
- D、  
  [n-1](javascript:void(0);)  
B，任意去掉一条边，n 种方法

![image4](/img/user/resources/attachments/image4-13.png)