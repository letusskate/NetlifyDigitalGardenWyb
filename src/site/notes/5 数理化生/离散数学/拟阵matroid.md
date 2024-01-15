---
{"dg-publish":true,"permalink":"/5 数理化生/离散数学/拟阵matroid/","title":"拟阵matroid"}
---


## 拟阵理解
拟阵是一个集合和一套关系的组合，要求这套关系必须在集合所有子集中都被满足。  
所以拟阵被定义为一个二元组（S,I）。  
比如矩阵拟阵：一个矩阵 S（向量集合）+ 线性无关关系 I 构成了一个矩阵拟阵。  
比如图拟阵：把 S 定义为一个无向图的边集，I 所表述的关系定义为“不构成环的边集”。也就是说，如果在一个图中，abcd 四条边不构成环，那么它属于 I。这样建立起来的 (S, I) 可以被证明是一个拟阵。
### 我理解的剖分拟阵（partition matroid）
集合满足这样的关系：集合内部的元素一次只能被占用一个。

## 相关资料
[怎么理解拟阵（matroid）？ - 知乎 (zhihu.com)](https://www.zhihu.com/question/316879980/answer/740466359)  
[拟阵及应用（一） - 知乎 (zhihu.com)](https://zhuanlan.zhihu.com/p/53976000)  
[When Greedy Algorithms are Perfect: the Matroid – Math ∩ Programming (jeremykun.com)](https://jeremykun.com/2014/08/26/when-greedy-algorithms-are-perfect-the-matroid/)