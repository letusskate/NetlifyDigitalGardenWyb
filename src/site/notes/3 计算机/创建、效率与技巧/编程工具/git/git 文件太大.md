---
{"dg-publish":true,"permalink":"/3 计算机/创建、效率与技巧/编程工具/git/git 文件太大/","title":"git 文件太大"}
---

## git 大文件管理
[别再往 git 提交大文件啦！\_哔哩哔哩\_bilibili](https://www.bilibili.com/video/BV1Fe4y1F75N/?spm_id_from=333.337.search-card.all.click&vd_source=20cb3e7c6ad3d64f0eb2d763ff005080)
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