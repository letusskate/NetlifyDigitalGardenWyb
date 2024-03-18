---
aliases: []
created: 2021-01-09 21:33:49+08:00
date created: 2023-07-05T11:13:20+08:00
date modified: 2024-01-13T19:21:08+08:00
dg-publish: true
tags: []
title: 第八章复习题 20200109
updated: 2021-01-12 14:25:30+08:00
---

## 我的错题
6

已知一个图的邻接矩阵表示，删除所有从第 i 个结点出发的边的方法是（）。（1.6 分）

**0.0**分
- A、  
  [将矩阵第i列全部置为0](javascript:void(0);)
- B、  
  [将矩阵第i行全部置为1](javascript:void(0);)
- C、  
  [将矩阵第i列全部置为1](javascript:void(0);)
- D、  
  [将矩阵第i行全部置为0](javascript:void(0);)  
我的答案：B

正确：D

弱智题大意了

7

已知一个有向图的邻接表存储结构如图所示，根据深度优先遍历算法，从顶点 v1 出发，所得到的顶点序列是（）。

![image1](/img/user/resources/attachments/image1-50.png)

（1.6 分）

**0.0**分
- A、  
  [v1,v2,v3,v5,v4](javascript:void(0);)
- B、  
  [v1,v3,v4,v2，v5](javascript:void(0);)
- C、  
  [v1,v4,v3,v5,v2](javascript:void(0);)
- D、  
  [v1,v2,v3,v4,v5](javascript:void(0);)  
我的答案：B

正确：C

错题

18

设无向图 G 中有 n 个顶点 e 条边，则用邻接矩阵作为图的存储结构进行深度优先遍历时的时间复杂度为（）

（1.6 分）

**0.0**分
- A、  
  [O(1)](javascript:void(0);)
- B、  
  [O(n+e)](javascript:void(0);)
- C、  
  [O(n)](javascript:void(0);)
- D、  
![image2](/img/user/resources/attachments/image2-25.png)

我的答案：B

正确：D

深度优先遍历，基于邻接矩阵 o(n^2)，BFS 基于邻接矩阵 O(n+e)

32

下面（）可以判断出一个有向图中是否有环（回路）。（1.6 分）

**0.0**分
- A、  
  [求关键路径](javascript:void(0);)
- B、  
  [求最短路径](javascript:void(0);)
- C、  
  [拓扑排序](javascript:void(0);)
- D、  
  [广度优先遍历](javascript:void(0);)  
我的答案：D

正确：C

深度优先遍历或拓扑排序都可以。A 关键路径能不能判断一个图有环还存在一些争议。关键路径本身虽然不允许有环，但求关键路径的算法本身无法判断是否有环，判断是否有环的是关键路径的第一步——拓扑排序。所以这个问题的答案主要是看你从哪个角度出发看问题。

38

对于一个具有 n 个顶点和 e 条边的无向图，若采用邻接表表示，则所有邻接表中的结点总数是（）（1.6 分）

**0.0**分
- A、  
  [e](javascript:void(0);)
- B、  
  [n+e](javascript:void(0);)
- C、  
  [2e](javascript:void(0);)
- D、  
  [e/2](javascript:void(0);)  
我的答案：B

正确：C

本题考查无向图的邻接表表示方法。邻接表可以表示出各个结点之间的关系，即无向图中的边，又由于图中有 e 条边，而每条边要连接两个结点，所以链表中的边结点总数为 2e。

41

设无向图 G 中有 n 个顶点 e 条边，则用邻接矩阵作为图的存储结构进行广度优先遍历时的时间复杂度为（）

（1.6 分）

**0.0**分
- A、  
![image2](/img/user/resources/attachments/image2-25.png)
- B、  
  [O(n+e)](javascript:void(0);)
- C、  
  [O(n)](javascript:void(0);)
- D、  
  [O(1)](javascript:void(0);)  
我的答案：B

正确：A

邻接表 n+e，邻接矩阵 n^2。深度广度都一样

49

拓扑排序算法是通过重复选择具有 () 个前驱顶点的过程来完成的。（1.6 分）

**0.0**分
- A、  
  [0](javascript:void(0);)
- B、  
  [1](javascript:void(0);)
- C、  
  [3](javascript:void(0);)
- D、  
  [2](javascript:void(0);)  
我的答案：B

正确：A

50

设无向图 G（如下图所示），则其最小生成树上所有边的权值之和为（）。

![image3](/img/user/resources/attachments/image3-15.png)

（1.6 分）

**0.0**分
- A、  
  [8](javascript:void(0);)
- B、  
  [11](javascript:void(0);)
- C、  
  [10](javascript:void(0);)
- D、  
  [7](javascript:void(0);)  
我的答案：B

正确：A

最小生成树不一定要是欧拉通路，只要是 n-1 条边，沟通了 n 个顶点就行
## 真的错题

7

已知一个有向图的邻接表存储结构如图所示，根据深度优先遍历算法，从顶点 v1 出发，所得到的顶点序列是（）。

![image1](/img/user/resources/attachments/image1-50.png)

（1.6 分）

**0.0**分
- A、  
  [v1,v2,v3,v5,v4](javascript:void(0);)
- B、  
  [v1,v3,v4,v2，v5](javascript:void(0);)
- C、  
  [v1,v4,v3,v5,v2](javascript:void(0);)
- D、  
  [v1,v2,v3,v4,v5](javascript:void(0);)  
我的答案：B

7

已知一个有向图的邻接表存储结构如图所示，根据深度优先遍历算法，从顶点 v1 出发，所得到的顶点序列是（）。

![image1](/img/user/resources/attachments/image1-50.png)

（1.6 分）

**0.0**分
- A、  
  [v1,v2,v3,v5,v4](javascript:void(0);)
- B、  
  [v1,v3,v4,v2，v5](javascript:void(0);)
- C、  
  [v1,v4,v3,v5,v2](javascript:void(0);)
- D、  
  [v1,v2,v3,v4,v5](javascript:void(0);)  
我的答案：A

正确：C

错题，四个选项都不对

31

任一个有向图的拓扑序列（）。（1.6 分）
- A、  
  [不存在](javascript:void(0);)
- B、  
  [一定有多个](javascript:void(0);)
- C、  
  [有一个](javascript:void(0);)
- D、  
  [有一个或多个](javascript:void(0);)  
D。实际上我觉的可能没有

题错了，无环有向图比较好  
老师好像说基于邻接矩阵进行广度优先搜索，不用栈，循环就行。

## 作题的不确定：
7

已知一个有向图的邻接表存储结构如图所示，根据深度优先遍历算法，从顶点 v1 出发，所得到的顶点序列是（）。

![image1](/img/user/resources/attachments/image1-50.png)

（1.6 分）
- A、  
  [v1,v2,v3,v5,v4](javascript:void(0);)
- B、  
  [v1,v3,v4,v2，v5](javascript:void(0);)
- C、  
  [v1,v4,v3,v5,v2](javascript:void(0);)
- D、  
  [v1,v2,v3,v4,v5](javascript:void(0);)  
我选 B，感觉都不对

8

设有向无环图 G 中的有向边集合 E={\<1，2\>，\<2，3\>，\<3，4\>，\<1，4\>}，则下列属于该有向图 G 的一种拓扑排序序列的是（）。（1.6 分）
- A、  
  [2，3，4，1](javascript:void(0);)
- B、  
  [1，4，2，3](javascript:void(0);)
- C、  
  [1，2，4，3](javascript:void(0);)
- D、  
  [1，2，3，4](javascript:void(0);)  
我选 D，我不知道什么是拓扑排序序列，百度：是将 G 中所有顶点排成一个线性序列，使得图中任意一对顶点 u 和 v，若边\<u,v\>∈E(G)，则 u 在线性序列中出现在 v 之前。

9

用普里姆 (Prim) 算法求具有 n 个顶点 e 条边的图的最小生成树的时间复杂度为（）。

（1.6 分）
- A、  
![image4](/img/user/resources/attachments/image4-12.png)
- B、  
  [O(n)](javascript:void(0);)
- C、  
  [O(1)](javascript:void(0);)
- D、  
![image2](/img/user/resources/attachments/image2-25.png)

我选 D，不会 prim

10

下面有向图所示的拓扑排序的结果序列是（）。

![image5](/img/user/resources/attachments/image5-9.png)

（1.6 分）
- A、  
  [123456](javascript:void(0);)
- B、  
  [125634](javascript:void(0);)
- C、  
  [521643](javascript:void(0);)
- D、  
  [516234](javascript:void(0);)  
我选 D，看成立体图，找个下坡序列就行了

11

设无向图 G 中有 n 个顶点 e 条边，则用用邻接表作为图的存储结构进行深度优先或广度优先遍历的时间复杂度为（）

（1.6 分）
- A、  
![image2](/img/user/resources/attachments/image2-25.png)
- B、  
  [O(1)](javascript:void(0);)
- C、  
  [O(n)](javascript:void(0);)
- D、  
  [O(n+e)](javascript:void(0);)  
我选 D，不确定

12

如果 n 个顶点的图是一个环，则它有 () 棵生成树。（1.6 分）
- A、  
  [2](javascript:void(0);)
- B、  
  [n-1](javascript:void(0);)
- C、  
  [1](javascript:void(0);)
- D、  
  [n](javascript:void(0);)  
D，不确定

14

设无向图 G 中有 n 个顶点 e 条边，则用邻接表作为图的存储结构进行深度优先遍历时的时间复杂度为（）。

（1.6 分）
- A、  
  [O(n)](javascript:void(0);)
- B、  
  [O(1)](javascript:void(0);)
- C、  
  [O(n+e)](javascript:void(0);)
- D、  
![image2](/img/user/resources/attachments/image2-25.png)

C，不确定

16

下列关于图遍历的说法不正确的是（）。（1.6 分）
- A、  
  [图的广度优先搜索中邻接点的寻找具有“先进先出”的特征](javascript:void(0);)
- B、  
  [图的遍历要求每一顶点仅被访问一次](javascript:void(0);)
- C、  
  [非连通图不能用深度优先搜索法](javascript:void(0);)
- D、  
  [连通图的深度优先搜索是一个递归过程](javascript:void(0);)  
C。B、D 不确定

17

一个图的边集为{\<0,1\>3,\<0,2\>5,\<0,3\>5,\<0,4\>10,\<1,2\>4,\<2,4\>2,\<3,4\>6},则从顶点 v0 到顶点 v4 共有（）条简单路径。（1.6 分）
- A、  
  [5](javascript:void(0);)
- B、  
  [6](javascript:void(0);)
- C、  
  [4](javascript:void(0);)
- D、  
  [3](javascript:void(0);)  
C。简单路径就是不经过任何一个点 2 次或以上。路径上顶点都不相同的路径

18

设无向图 G 中有 n 个顶点 e 条边，则用邻接矩阵作为图的存储结构进行深度优先遍历时的时间复杂度为（）

（1.6 分）
- A、  
  [O(1)](javascript:void(0);)
- B、  
  [O(n+e)](javascript:void(0);)
- C、  
  [O(n)](javascript:void(0);)
- D、  
![image2](/img/user/resources/attachments/image2-25.png)

B。 不确定

20

图的逆邻接表存储结构只适用于（）图。（1.6 分）
- A、  
  [无向图](javascript:void(0);)
- B、  
  [有向图](javascript:void(0);)
- C、  
  [连通图](javascript:void(0);)
- D、  
  [稠密图](javascript:void(0);)  
B，不知道，感觉和稠密与否没关系

21

关键路径是事件结点网络中（）。（1.6 分）
- A、  
  [最长的回路](javascript:void(0);)
- B、  
  [从源点到汇点的最长路径](javascript:void(0);)
- C、  
  [最短的回路](javascript:void(0);)
- D、  
  [从源点到汇点的最短路径](javascript:void(0);)  
D 完全不会

百度：在 AOE 网中，从源点到汇点的所有路径中，具有最大路径长度的路径成为关键路径。在 AOE 网中，可以有不止一条的关键路径。

23

关键路径是事件结点网络中的（）。（5.6 分）
- A、  
  [从源点到汇点的最短路径](javascript:void(0);)
- B、  
  [最短的回路](javascript:void(0);)
- C、  
  [最长的回路](javascript:void(0);)
- D、  
  [从源点到汇点的最长路径](javascript:void(0);)  
D

27

图的深度优先遍历序列（）。（1.6 分）
- A、  
  [是唯一的](javascript:void(0);)
- B、  
  [不是唯一的](javascript:void(0);)
- C、  
  [有两种不同的序列](javascript:void(0);)
- D、  
  [有三种不同的序列](javascript:void(0);)  
B，如果给了确定的存储方式，就是唯一的了

31

任一个有向图的拓扑序列（）。（1.6 分）
- A、  
  [不存在](javascript:void(0);)
- B、  
  [一定有多个](javascript:void(0);)
- C、  
  [有一个](javascript:void(0);)
- D、  
  [有一个或多个](javascript:void(0);)  
D。可能没有

32

下面（）可以判断出一个有向图中是否有环（回路）。（1.6 分）
- A、  
  [求关键路径](javascript:void(0);)
- B、  
  [求最短路径](javascript:void(0);)
- C、  
  [拓扑排序](javascript:void(0);)
- D、  
  [广度优先遍历](javascript:void(0);)  
D，受塞克算法挑战赛启发

34

若有向图中，顶点表示事件，弧表示活动，弧上的权表示完成该活动所需的时间，则称这类有向图为边表示活动的网（AOE 网），在 AOE 网中以下说法哪个正确（）。（1.6 分）
- A、  
  [汇点只有一个表示工程的结束](javascript:void(0);)
- B、  
  [源点可以有多个，其中一个表示工程的开始](javascript:void(0);)
- C、  
  [源点只有一个表示工程的开始](javascript:void(0);)
- D、  
  [源点可以有多个，其中最小一个表示工程的结束](javascript:void(0);)  
C。原来这就是 AOE 网

35

任何一个无向连通图的最小生成树 ()

（1.6 分）
- A、  
  [一定有多棵](javascript:void(0);)
- B、  
  [一棵或多棵](javascript:void(0);)
- C、  
  [可能不存在](javascript:void(0);)
- D、  
  [只有一棵](javascript:void(0);)  
C。讲真不太会

36

无向图的邻接矩阵是一个（）。（1.6 分）
- A、  
  [对称矩阵](javascript:void(0);)
- B、  
  [对角矩阵](javascript:void(0);)
- C、  
  [零矩阵](javascript:void(0);)
- D、  
  [上三角矩阵](javascript:void(0);)  
A。不知道这东西叫对称还是对角

百度，应该选 A

39

已知一个连通图的边集为{（1，2）3，（1，3）6，（1，4）8，（2，3）4，（2，5）10，（3，5）12，（4，5）2}，该图的最小生成树的权为（）。

（1.6 分）
- A、  
  [17](javascript:void(0);)
- B、  
  [18](javascript:void(0);)
- C、  
  [15](javascript:void(0);)
- D、  
  [16](javascript:void(0);)  
A，不知道系统计算方法

40

设无向图 G 中有 n 个顶点，则该无向图的最小生成树上有（）条边。（1.6 分）
- A、  
  [n](javascript:void(0);)
- B、  
  [n-1](javascript:void(0);)
- C、  
  [2n-1](javascript:void(0);)
- D、  
  [2n](javascript:void(0);)  
B，不确定

42

用 Dijkstra 算法求某一顶点到其余各顶点间的最短路径是按路径长度（）的次序来得到最短路径的。（1.6 分）
- A、  
  [递增](javascript:void(0);)
- B、  
  [最短的值之和](javascript:void(0);)
- C、  
  [随机](javascript:void(0);)
- D、  
  [递减](javascript:void(0);)  
A，乱选的，我感觉都不对啊

43

假设一个有 n 个顶点和 e 条弧的有向图用邻接表表示,则删除与某个顶点 vi 相关的所有弧的时间复杂度是 ()（1.6 分）
- A、  
  [O(n\*e)](javascript:void(0);)
- B、  
  [O(n+e)](javascript:void(0);)
- C、  
  [O(e)](javascript:void(0);)
- D、  
  [O(n)](javascript:void(0);)  
B，因为入度不确定，要遍历一遍

44

设某无向图中有 n 个顶点 e 条边，则建立该图邻接表的时间复杂度为（）。

（1.6 分）
- A、  
  [O(ne)](javascript:void(0);)
- B、  
  [O(n+e)](javascript:void(0);)
- C、  
![image2](/img/user/resources/attachments/image2-25.png)
- D、  
![image6](/img/user/resources/attachments/image6-9.png)

B，不确定

46

若要求一个稠密图 G 的最小生成树，最好用 () 算法来求解。（1.6 分）
- A、  
  [求拓扑排序的](javascript:void(0);)
- B、  
  [克鲁斯卡尔(Kruskal)](javascript:void(0);)
- C、  
  [普里姆(Prim)](javascript:void(0);)
- D、  
  [求最短路径的](javascript:void(0);)  
C，忘了

kruskal 适合稀疏，prim 适合稠密

49

拓扑排序算法是通过重复选择具有 () 个前驱顶点的过程来完成的。（1.6 分）
- A、  
  [0](javascript:void(0);)
- B、  
  [1](javascript:void(0);)
- C、  
  [3](javascript:void(0);)
- D、  
  [2](javascript:void(0);)  
B。不会

50

设无向图 G（如下图所示），则其最小生成树上所有边的权值之和为（）。

![image3](/img/user/resources/attachments/image3-15.png)

（1.6 分）
- A、  
  [8](javascript:void(0);)
- B、  
  [11](javascript:void(0);)
- C、  
  [10](javascript:void(0);)
- D、  
  [7](javascript:void(0);)  
B，排除法做的，不会正统方法

51

在含 n 个顶点和 e 条边的无向图的邻接矩阵中,零元素的个数为 ()

（1.6 分）
- A、
- B、  
![image7](/img/user/resources/attachments/image7-5.png)
- C、  
  [e](javascript:void(0);)
- D、  
  [2e](javascript:void(0);)  
B，无向图太容易错了

57

设无向图 G 中有 n 个顶点 e 条边，则其对应的邻接表中的表头结点和表结点的个数分别为（）。（1.6 分）
- A、  
  [2n，e](javascript:void(0);)
- B、  
  [n，e](javascript:void(0);)
- C、  
  [n，2e](javascript:void(0);)
- D、  
  [e，n](javascript:void(0);)  
C，无向图太容易错了

59

已知图的邻接矩阵如下图所示，根据算法，则从顶点 0 出发，按深度优先遍历的结点序列是

![image8](/img/user/resources/attachments/image8-5.png)

（1.6 分）
- A、  
  [0135642](javascript:void(0);)
- B、  
  [0423165](javascript:void(0);)
- C、  
  [0134256](javascript:void(0);)
- D、  
  [0243156](javascript:void(0);)  
C。有点麻烦

60

已知图的邻接矩阵同下图所示，根据算法，则从顶点 0 出发，按广度优先遍历的结点序列是

![image8](/img/user/resources/attachments/image8-5.png)

（1.6 分）
- A、  
  [0123465](javascript:void(0);)
- B、  
  [0243165](javascript:void(0);)
- C、  
  [0123456](javascript:void(0);)
- D、  
  [0135642](javascript:void(0);)  
A。比较流畅