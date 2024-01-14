---
aliases: []
created: 2020-04-05 20:07:50+08:00
date created: 2023-07-05T11:13:20+08:00
date modified: 2024-01-13T19:21:07+08:00
dg-publish: true
tags: []
title: 1Thinking in Algorithms 算法思维
updated: 2020-04-14 23:49:17+08:00
---

这本书将教算法和数据结构。  
引子：convex hall 凸包算法  
枚举  
贪心 Greedy  
分治 Divide and Conquer  
并行 Parallel  
估算 Approximation  
归纳 Generalization

凸包问题的提出 convex hull  
平面上许多点，通过链接某些点，画出一条封闭的折线，包围住内部的所有点，并且折线所构成的多边形必须是凸多边形。（实际上只要平面的点大于三个，一定存在这样的凸多边形）  
我们发现人可以轻松画出这样的轮廓，但机器似乎并不轻松。

Naïve solution 枚举法  
随意选择三个点构成三角形，如果有任何其他点在这个三角形内，则其不是凸包的一部分。  
算法总结：  
Slow Hull Summary  
Best,Average,Worst:O(n^4)  
SlowHull(p)  
foreach p0 in P do  
foreach p1 in {P-p0} do  
foreach p2 in {P-p0-p1} do  
foreach p3 in {P-p0-p1-p2} do  
if p3 is contained within Triangle(p0,p1,p2) then  
mark p3 as internal  
Create array A with all non-internal points in P  
Determine leftmost point,left,in A  
Sort A by angle formed with vertical line through left  
Return A

注意：p0,p1,p2 形成了一个三角形  
没有被标记为 internal 的点构成凸包  
这些角度从 -90 度到 90 度

Intelligent Approaches 智能方法  
下面列举几种优化过的方法。
1.  Greedy 贪心算法（graham's scan）
- 找到最低点 low，它一定是凸包的一个顶点。
- 剩下点按照与 low 所在铅垂线所成的角排序，从 -90 度到 90 度。
- 顺时针按角度从小到大链接各点，出现下凹后，立刻把凹陷处点删除。
- 循环一圈后到达终点，除去被删除的点，剩下的点就成了凸包。
- 详细算法请看第 3 章算法例子
2.  Divide and Conquer 分治法  
我们可以先找到左右顶点，然后把问题划分为画上半个圆弧和画下半个圆弧。详细方法在第九章的 Convex Hull Scan
3.  Parallel 并行算法  
如果我们有多个处理器，用 x 坐标把所有点分成若干部分，每一个处理器对应一部分。

如果各个部分的凸包画完了，我们重复的组合各个部分的凸包就可以得到最终答案。

组合方法是，将两个相邻的凸包，连接两个凸包最高点，链接两个凸包的最低点。之后去除这四个点组成的四边形内，除去上下两边的所有连线。  
4.  Approximation 估算  
加上这些优化，算法的最差表现依然不乐观，我们其实可以用估算的方法画出凸包，并且其错误是可以被准确预测的。

Bentley-Faust-Preparata 算法，将平面上的点划分为垂直的，一条一条的组，在每一条中，取最高点和最低点作为凸包的点，加上最左和最右两点，构成了整个凸包。这样做可能有点被落在凸包外面。  
5.  Generalization 归纳  
很有可能一些更普遍的问题的答案可以用作其他的独特问题的求解。

Voronnoi diagram 泰森多边形，就是平面上有一些点，将他们的所有垂直平分线连接起来，构成一块一块的图形。

我们发现如果我们将凸包问题的所有点画出 Voronnoi diagram，那么将会出现半无限的平面区域，这些在半无限平面区域上的点，恰好就是凸包上的点。

这样的构想引出了如下算法：
- 计算 P 点集的 Voronoi diagram
- 找到最低点 P，初始化凸包，从与他相连的地区开始画凸包。
- 顺时针找到每一个半无限区域上的点，把这些点加入凸包中。
- 一直加入点，直到回到起始地区。

Summary 总结  
一个高效的算法的发现是不容易的。数据不同、运行环境不同（比如有时可以并行）、期望得到的结果不同，很有可能导致最优的算法不同。