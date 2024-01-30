---
aliases: []
date created: 2023-07-24T20:23:45+08:00
date modified: 2024-01-14T17:35:03+08:00
dg-publish: true
tags: []
title: latex文件组织
---

## latex 分开章节编写
创建一个 chapter 文件夹，储存各个模块的文章内容，方便后期修改，使得文章更有条理。  
在 main.tex 中，输入/input{chapter/chapter1}即可引用 chapter1 的代码。
### 如何解决子文件夹的 tex 文件无法引用主文件夹的 bib 的问题
核心在于建立起不同文件之间的主次关系  
比如，你的文章主 tex 文件是放在 Main 这个文件夹里的 main.tex 文件，通常 \addbibresource{} 或者 \bibliography{} 都是在 main.tex 中指定的（也就是我们常用的模板文件）  
然后你在 Mian/chapter 文件夹下放置各个章节的 tex 文件（例如 chapter1.tex）,在 main.tex 中通过 \input{chapter/chapter1} 来插入章节  
在 texstudio 等编辑器中，只要有了 \input{} 两个文件的主从关系就已经建立起来了，因此直接在 chapter1.tex 中 使用 \cite{} 等命令就可以自动补全  
但是在 sublime text 中，仅仅通过 input{} 是不够的，需要手动在 chapter1.tex 中制定主文件  
% !tex root = ../main.tex  
接着就可以愉快滴使用 main.tex 中设定的 bib 文件来插入文献了