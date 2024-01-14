---
aliases: []
date created: 2023-07-24T20:26:05+08:00
date modified: 2024-01-14T17:35:03+08:00
dg-publish: true
tags: []
title: latex编译选项
---

## Ctex
仅限于我的了解，不考虑文档类选项时，功能上的差异  
\documentclass{ctexart}  
相当于  
\documentclass{article}  
\usepackage\[heading\]{ctex}  
仅使用 \usepackage{ctex} 时，不能使用 texdoc ctex《第 7 节 章节标题样式设置》介绍的功能。  
速度上的差异，应该小到不可感知。

## PDFlatex
最标准的 latex，没有多余支持

## bibtex
编译引文的单独编译模块

## 常用编译顺序
pdf-bib-pdf-pdf