---
aliases: []
date created: 2023-09-13T15:21:47+08:00
date modified: 2024-01-13T19:21:07+08:00
dg-publish: true
tags: []
title: git 文件太大
---

## 相关教程
[如何解决 GitHub 提交次数过多 .git 文件过大的问题？ - 知乎](https://www.zhihu.com/question/29769130)  
[git仓库清理瘦身解决 .git文件夹过大的问题\_git pack文件过大\_码农有梦想的博客-CSDN博客](https://blog.csdn.net/weixin_41791737/article/details/128646757)
## 方法总结
### 新仓库法
最简单的方法：新建一个仓库，存放代码，之前的提交历史还在之前的仓库里。
### gitee gc 法
通过 gitee gc 进行
#### gc 后
云端的总空间由 600 多 mb 变为了 370mb  
![](/img/user/resources/attachments/20231025git 文件太大.png)
##### 此时直接 pull，不重新 clone
本地的.git 文件夹大小还是 407mb 不变
##### 此时重新 clone
本地的.git 文件夹由 407mb 变为了 392mb，变化不大  
#### 直接 push 一次后
云端总空间还是 370mb  
本地总空间还是很大。
#### 关于 gc
优化的只是云端.git 文件大小，和本地关系不大。