---
aliases: []
created: 2023-01-11 15:34:07+08:00
date created: 2023-07-05T11:13:20+08:00
date modified: 2024-01-14T16:45:16+08:00
dg-publish: true
tags: []
title: Scipy
updated: 2023-01-13 17:48:36+08:00
---

## 规划和寻根
### 官方文档
[Optimization and root finding (scipy.optimize) — SciPy v1.10.0 Manual](https://docs.scipy.org/doc/scipy/reference/optimize.html)
## 求解线性规划问题
### 相关网址
[使用scipy解决线性规划（LP）问题 - 知乎 (zhihu.com)](https://zhuanlan.zhihu.com/p/530278731)  
[(24条消息) python模块：Scipy.optimize.linprog线性规划求解_python linprog_yasuo626的博客-CSDN博客](https://blog.csdn.net/qq_58539881/article/details/126349305)
### 如果无法求解
使用内点法代替（众所周知，单纯形解算器是相当不可靠的，不是因为单纯形法，而是因为实现不好）。当然，这个模型可以在预解决方案中完全解决：没有什么可以优化的。在  
sol = linprog(c = c, A_eq = A_eq, b_eq = b_eq, bounds = (0, None), method='interior-point')  
**
### 最快速的求解 methord
LINPROG_METHODS = \['simplex', 'revised simplex', 'interior-point', 'highs', 'highs-ds', 'highs-ipm'\]  
选取后三个效果较好。
### 给非规划变量施加约束条件
当有些已知变量作为数据输入模型的时候，想校验这样的输入是否合法，此时可以添加一个约束条件，让所有规划变量 x 的系数向量 A 为\[0,0,0\]，之后在右侧添加已知变量（非规划变量）允许的最大值减去变量的值，显然如果 0\<一个负数，约束条件无法通过，会返回无解，我们的目的就达到了。  
例如 a_i 作为输入，我们要求 a_i 的和小于 M，此时让一个约束条件为：0x_1+0x_2+0x_3\<=M-sum(a_i)，就实现了需求