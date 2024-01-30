---
aliases: []
date created: 2023-10-30T16:34:56+08:00
date modified: 2024-01-14T17:35:03+08:00
dg-publish: true
tags: []
title: 列表
---

## 相关教程
[latex-列表 itemize enumerate description 自定义\_latex itemize-CSDN博客](https://blog.csdn.net/HugoChen_cs/article/details/105189541)  
[LaTex中item如何缩进？ - 知乎](https://www.zhihu.com/question/595012896)

## 自定义列表
在 main 中引入包，之后定义心列表 ，用到的时候输入定义的名字即可
```
\newlist{myitemize}{itemize}{1}
\setlist[myitemize,1]{
  label=\textcolor{black}{\textbullet}, % 使用黑色圆点作为符号
  itemindent=0em,
  labelindent=1em,
  leftmargin=1em,
  labelsep=1em,
  align=left,
  labelwidth=1em,
  before=\vspace{-\baselineskip},
}

```
### 我的 contribution 列表
```
\usepackage{enumitem}

\newlist{contributions}{itemize}{1}

\setlist[contributions,1]{

label=\textbullet,

itemindent=1em, % 第一行的缩进

labelindent=0em, % 标签的缩进

leftmargin=1em, % 左边距

labelsep=0em, % 标签和文本之间的距离

align=left, % 对齐方式

labelwidth=1em, % 标签的宽度

% before=\vspace{-\baselineskip}, % 去除额外的垂直空间

}
```