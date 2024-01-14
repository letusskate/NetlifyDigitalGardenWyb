---
aliases: []
date created: 2023-09-08T09:14:40+08:00
date modified: 2024-01-14T16:45:16+08:00
dg-publish: true
tags: []
title: GPU加速规划
---

## 相关文章
[运筹系列53：GPU用于线性规划和整数规划调研\_使用gpu加速线性规划\_IE06的博客-CSDN博客](https://blog.csdn.net/kittyzc/article/details/109043633)
## CuPy
一个类似 numpy 的包，可以用 gpu 加速矩阵运算。
### 安装
`pip install cupy-cuda11x`  
[Installation — CuPy 12.2.0 documentation](https://docs.cupy.dev/en/stable/install.html#install-cuda)
#### 找不到 cl.exe
安装 visual studio 2022，选择桌面 c++ 开发  
之后自动就解决了。
#### 踩坑
[Pycharm+cupy+VS2019/2022安装踩坑 - 知乎](https://zhuanlan.zhihu.com/p/614102729)

## CuSPARSE
[What libraries for linear solvers on CUDA can you recommend? - Accelerated Computing / GPU-Accelerated Libraries - NVIDIA Developer Forums](https://forums.developer.nvidia.com/t/what-libraries-for-linear-solvers-on-cuda-can-you-recommend/233775)
## nvida
[加速的 AI 物流和路线优化软件 | NVIDIA Developer](https://developer.nvidia.com/zh-cn/cuopt-logistics-optimization)  
[NVIDIA CUDA-X | NVIDIA 开发者](https://developer.nvidia.cn/zh-cn/gpu-accelerated-libraries)
## CHOLMOD suitesparse
[CHOLMOD | NVIDIA 开发者](https://developer.nvidia.cn/cholmod)  
[suitesparse : a suite of sparse matrix software](https://people.engr.tamu.edu/davis/suitesparse.html)
### github
[GitHub - scikit-sparse/scikit-sparse: Sparse matrix tools extending scipy.sparse, but with incompatible licenses](https://github.com/scikit-sparse/scikit-sparse)  
### 文档
[scikit-sparse - Sparse matrix extensions for SciPy — scikit-sparse 0.4.3+9.ge35b764 documentation](https://scikit-sparse.readthedocs.io/en/latest/)  
[Sparse Cholesky decomposition (sksparse.cholmod) — scikit-sparse 0.4.3+9.ge35b764 documentation](https://scikit-sparse.readthedocs.io/en/latest/cholmod.html#overview)