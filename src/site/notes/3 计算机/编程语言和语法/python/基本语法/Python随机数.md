---
{"dg-publish":true,"permalink":"/3 计算机/编程语言和语法/python/基本语法/Python随机数/","title":"Python随机数"}
---


## 浮点随机数
### 包含上下界
random.uniform(min,max)
### 0-1 之间不包含 1
random.random()  
在\[0.0, 1.0) 之间产生随机浮点数
## 整数随机数
### 包含上下界
random.randint(min, max)
## 正态分布随机数
random.normalvariate(mu=mu, sigma=sigma)