---
aliases: []
date created: 2023-07-12T13:44:35+08:00
date modified: 2024-01-13T19:21:06+08:00
dg-publish: true
tags: []
title: 交叉验证
---

## 什么是交叉验证
注意一定是交叉 validate，不是 test  
是一种对于验证集的处理方法，即重复使用训练集和验证集，以获取最优的模型（比如 vgg 还是 res）以及最优的超参数（比如最优的 batch_size），之后将所有训练集用于训练模型，用测试集监视模型训练效果。  
在 scikit-learn 的框架上写的是把数据集分成测试集和训练集，测试集是永远不能动的，把训练集分成训练子集和测试子集，用 K-fold 评估并且选择最优的模型以及相应参数，最终在测试集上进一步测试。可参考 scikit-learn.org/stable  
![](/img/user/resources/attachments/Pasted image 20230711230735.png)
### 参考资料
[【机器学习】Cross-Validation（交叉验证）详解 - 知乎](https://zhuanlan.zhihu.com/p/24825503)  

## 时间序列交叉验证
同样是分为测试集、验证集、训练集，交叉验证只用于训练集和验证集合。  
取前 k 天训练，第 k+1 天测试，之后取前 k+1 天训练，第 k+2 天测试，直到所有训练集和验证集都用于测试过，最后求出平均误差。  
对于所有模型都进行一次这样的循环，选出最优模型。  
将最优模型用全部训练集和测试集训练，得到最终最优模型。  
![](/img/user/resources/attachments/Pasted image 20230711225404.png)
### 参考资料
[Cross Validation in Time Series. Cross Validation: | by Soumya Shrivastava | Medium](https://medium.com/@soumyachess1496/cross-validation-in-time-series-566ae4981ce4)