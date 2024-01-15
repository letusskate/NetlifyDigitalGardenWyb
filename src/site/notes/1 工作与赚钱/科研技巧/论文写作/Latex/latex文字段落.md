---
{"dg-publish":true,"permalink":"/1 工作与赚钱/科研技巧/论文写作/Latex/latex文字段落/","title":"latex文字段落"}
---


## 文字
### 文字加粗  
\textbf{}  
### 数学公式加粗  
\mathbf{}
### 居中
```
\centerline语法：

\centerline{文本}

这是 TeX 的原始命令，适用于居中较短的文本。
```
```
center 环境的语法：

\begin{center}
第一行 \\
第二行 \\
\end{center}

center环境可以实现多行居中对齐。
在center环境中，如果“第一行”太长了，则会自动换行，并且换行的文本也还是居中对齐的，因此这是我们很常用的方式。
```
## 段落
### 换行
#### 强制换行
双斜杠\\
#### 正常换行
空一行表示换行，类似 markdown
### 分栏
#### 相关教程
[[LaTeX学习] [3] 如何实现分栏以及双栏文档的对齐及摘要是否跨栏的配置 - 知乎](https://zhuanlan.zhihu.com/p/597814052)