---
aliases: []
date created: 2023-07-24T20:24:10+08:00
date modified: 2024-01-14T17:35:03+08:00
dg-publish: true
tags: []
title: latex附录和引用
---

## latex 附录和引用
### 网页教程
[LaTeX 第七课：排版参考文献 - 知乎 (zhihu.com)](https://zhuanlan.zhihu.com/p/25013341?utm_source=wechat_session)
### 数字编号
1 按照参考文献出现顺序来编号  
% 一定要用这个 natbib 加 sort 参数，如果只用 unsrt，会出问题。比如：同时\cite{refA, refB, refC}， 可能会显示： \[19, 9, 5\] ，即同一个 cite 里面的顺序不对！  
\usepackage\[sort\]{natbib}  
\bibliographystyle{unsrt}  
\bibliography{bib/references}  
如上，关键在于：natbib 和 unsrt。  
效果：  
![image1](/img/user/resources/attachments/image1-2 1.png)  
2 对编号制作超链接  
这个简单：  
\# 默认  
\usepackage\[\]{hyperref}  
\# 自定义  
%\usepackage\[colorlinks,  
% linkcolor=blue,  
% anchorcolor=blue,  
% citecolor=blue\]{hyperref}  
二选一即可。
### IEEE 模板对齐问题
如果我们使用 IEEE 提供的模板，当参考文献多余十个的时候，从第十篇开始，参考文献的第二行缩进就无法对齐了，具体如下图所示：  
![image2](/img/user/resources/attachments/image2 1.png)  
解决方法：只需要将下图所示 latex 中的 1 改大一些，比如 40，就可以了。  
![image3](/img/user/resources/attachments/image3 1.png)
### natbib 报错
在使用 natbib 编译书稿时，LaTex 报错 (但生成的 PDF 文件正确)：  
Package natbib Error: Bibliography not compatible with author-year citations. (natbib)  
Press \<return\> to continue in numerical citation style.  
该错误信息表示文献条目 (bib 文件中的内容) 与“作者 - 年”的引用格式不兼容，即有的文献缺少 author 或 year 字段，不能用“作者 - 年”引用格式。有两种解决方案：  
1\. 确保所有文献条目均含有 author 字段和 year 字段；  
2\. 在调用 natbib 宏包时，使用 numbers 参数，即：  
\usepackage\[square, comma, sort&compress, numbers\]{natbib}  
#### 参考资料
[bibtex - Package natbib Error: Bibliography not compatible with author-year citations - TeX - LaTeX Stack Exchange](https://tex.stackexchange.com/questions/54480/package-natbib-error-bibliography-not-compatible-with-author-year-citations)  
我采用第二种方式后，编译书稿不再出现这一错误。
#### 意外情况
又是这个报错，这次完全找不到原因。于是我重新编译了一遍中文版，之后又编译英文版，错误就消失了。