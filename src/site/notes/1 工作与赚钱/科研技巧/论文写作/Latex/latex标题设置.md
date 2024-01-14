---
aliases: []
date created: 2023-07-24T20:22:36+08:00
date modified: 2024-01-14T17:35:03+08:00
dg-publish: true
tags: []
title: latex标题设置
---

## 标题设置
### ctex 网页教程
[不一样的 LaTeX 教程（第二话）：LaTeX 多级标题设置必知必会_latex标题_极与客的博客-CSDN博客](https://blog.csdn.net/eThreeJIAN/article/details/122795654)
### 目录深度控制方法一（ctex）
\documentclass{ctexart}  
\ctexset{secnumdepth=4,tocdepth=4}  
\begin{document}  
\tableofcontents  
\section{test}  
\subsection{test}  
\subsection{test}  
\subsubsection{test}  
\paragraph{test}  
\end{document}
### 目录深度控制方法二（原生）
在 Latex 中，通常编号到 subsubsection，book 类型的目录默认只显示到 subsection，但是如果需要使用更深的目录或章节编号，需要在导言区进行如下设置：
- \setcounter{tocdepth}{3}：toc 即 table of content，表示目录显示的深度
- \setcounter{secnumdepth}{4}：secnum 即 section number，表示章节编号的深度  
其中的数字 3 和 4 表示深度，具体数字的含义如下：
- -1 part
- 0 chapter
- 1 section
- 2 subsection
- 3 subsubsection
- 4 paragraph
- 5 subparagraph  
例子：  
\documentclass{article}  
\setcounter{tocdepth}{4}  
\setcounter{secnumdepth}{4}  
\begin{document}  
\tableofcontents\section{section}  
\subsection{subsection}  
\subsubsection{subsubsection}  
\paragraph{paragraph}  
\end{document}
### 输入 paragraph 后不默认换行，且不默认加粗 
![image5](/img/user/resources/attachments/image5 1.png)  
\paragraph 之后会出现首行内容不换行直接跟在 paragraph 后的情况。  
代码如下：

```
\paragraph{Star ratings statistical analysis}  
 AAAAAA  
 BBBBBB  
 CCCCCC  
```
解决方案：  
1.引入包  
`\usepackage{CJK}  `  
2.修改成如下代码。记得在\~{}后加入换行  
```
\paragraph{Star ratings statistical analysis}\~{}  
 AAAAAA  
 BBBBBB  
 CCCCCC  
```
效果如下：  
![image6](/img/user/resources/attachments/image6 1.png)  
3.美观起见，加粗 paragraph：  
```
\textbf{\paragraph{Star ratings statistical analysis}\~{}}  
 AAAAAA  
 BBBBBB  
 CCCCCC  
```
效果如下：  
![image7](/img/user/resources/attachments/image7 1.png)
### subsubsection 后没有首行缩进
#### 方法一
在 section 后加入~{}，并在下一行直接输入文字，不要留空行。
#### 方法二
```
\subsubsection
\ +空格
\newline
\indent +正文

```
### 输入不带编号的标题
加入\*  
\section\*{Appendix}