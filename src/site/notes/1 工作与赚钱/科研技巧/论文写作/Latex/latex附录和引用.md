---
{"dg-publish":true,"permalink":"/1 工作与赚钱/科研技巧/论文写作/Latex/latex附录和引用/","title":"latex附录和引用"}
---


## url 换行问题
```latex
% 在导言区添加 (置于 hyperref 前)
\usepackage{xurl} % 允许在任意字符位置换行
\usepackage[colorlinks=true]{hyperref}
```

[latex参考文献太长，换行处理\_latex如何网址换行-CSDN博客](https://blog.csdn.net/u014204323/article/details/115487424)  
### 我的代码
```
 HYPERLINK 将引文、公式变成超链接，能自动跳转
%hyperref still needs to be put at the end!
% citecolor为引用颜色 第一种为 green
% linkcolor为图表引用颜色 第一种为 red
\usepackage[colorlinks,
            linkcolor=blue,
            anchorcolor=blue,
            citecolor=blue]{hyperref}
% 修改参考文献两端[]颜色 第一种为 green
\renewcommand{\citeleft}{\textcolor{blue}{[}}  
\renewcommand{\citeright}{\textcolor{blue}{]}}
```
这样做会导致 `[5], [9]–[11]` 这种格式的引用只有左右是蓝色，非常怪异。

```
\usepackage[colorlinks=true, citecolor=blue, linkcolor=magenta, urlcolor=orange]{hyperref}
% \let\oldcite=\cite%  ← 添加 %
% \renewcommand{\cite}[1]{\textcolor{blue}{\oldcite{#1}}}%  ← 添加 %
```
这样做会导致每一组引文前出现一个空格。
## IEEE 模板对齐问题
如果我们使用 IEEE 提供的模板，当参考文献多余十个的时候，从第十篇开始，参考文献的第二行缩进就无法对齐了，具体如下图所示：  
![image2](/img/user/resources/attachments/image2 1.png)  
解决方法：只需要将下图所示 latex 中的 1 改大一些，比如 40，就可以了。  
![image3](/img/user/resources/attachments/image3 1.png)
## natbib 报错
在使用 natbib 编译书稿时，LaTex 报错 (但生成的 PDF 文件正确)：  
Package natbib Error: Bibliography not compatible with author-year citations. (natbib)  
Press \<return\> to continue in numerical citation style.  
该错误信息表示文献条目 (bib 文件中的内容) 与“作者 - 年”的引用格式不兼容，即有的文献缺少 author 或 year 字段，不能用“作者 - 年”引用格式。有两种解决方案：  
1\. 确保所有文献条目均含有 author 字段和 year 字段；  
2\. 在调用 natbib 宏包时，使用 numbers 参数，即：  
\usepackage\[square, comma, sort&compress, numbers\]{natbib}  
### 参考资料
[bibtex - Package natbib Error: Bibliography not compatible with author-year citations - TeX - LaTeX Stack Exchange](https://tex.stackexchange.com/questions/54480/package-natbib-error-bibliography-not-compatible-with-author-year-citations)  
我采用第二种方式后，编译书稿不再出现这一错误。
### 意外情况
又是这个报错，这次完全找不到原因。于是我重新编译了一遍中文版，之后又编译英文版，错误就消失了。