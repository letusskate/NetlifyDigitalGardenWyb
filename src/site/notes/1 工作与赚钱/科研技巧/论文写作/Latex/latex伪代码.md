---
aliases: []
date created: 2023-08-30T19:46:48+08:00
date modified: 2024-01-14T17:35:03+08:00
dg-publish: true
tags: []
title: latex伪代码
---

## 方案种类
一般会接触到的包有 algorithm、algorithmic、algorithmicx、algorithm2e 这四种包。

algorithm 用于给伪代码提供一个浮动体环境，防止其换页或其他因素导致的内容中断，从而跨页显示。

algorithmic 用于编辑伪代码的内容，一些 for、while、if 等语句通过该包中的命令进行编写。

algorithmicx 可以看作 algorithmic 的升级版，提供了一些自定义命令

algorithm2e 则是独立于 algorithmic 和 algorithmicx 的另一套伪代码环境，两套环境语法、排版上均不相同。
## 相关教程
### algorithmicx
[LaTeX伪代码写法总结-腾讯云开发者社区-腾讯云](https://cloud.tencent.com/developer/article/2166781)  
### algorithm2e
[用LaTeX优雅地书写伪代码——Algorithm2e简明指南 - 知乎](https://zhuanlan.zhihu.com/p/166418214)
### 例子与代码
[Latex写算法的伪代码排版\_latex 算法ruturn\_铭记\_的博客-CSDN博客](https://blog.csdn.net/lwb102063/article/details/53046265)