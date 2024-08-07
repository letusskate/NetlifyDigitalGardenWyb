---
{"dg-publish":true,"permalink":"/1 工作与赚钱/科研技巧/论文写作/Latex/latex数学公式/","title":"latex数学公式"}
---


## 简单上手
### 可视化编辑器
[LaTeX在线：吴文中数学公式编辑器 (91maths.com)](https://latex.91maths.com/)
### 图片教程
[latexsheet (wch.github.io)](https://wch.github.io/latexsheet/)  
[latexsheet.pdf](../../../../resources/attachments/latexsheet.pdf)
### 符号字典
[Latex 数学符号速查字典（第2版）\_latex字典\_长行的博客-CSDN博客](https://blog.csdn.net/Changxing_J/article/details/115265901)
### 常用符号
[latex常用符号 - PilgrimHui - 博客园](https://www.cnblogs.com/liaohuiqiang/p/9671302.html)
### 希腊字母
[latex 常见字符 - 砖猿 - 博客园](https://www.cnblogs.com/auspice/p/16596300.html)
### 数学公式字母
在 latex workshop 插件就有

## 语法
### 集合
```
\mid    竖线
```
### 乘法
```
\ast 
\times
```
### 在任取符号下面标注范围
```
\underset{\varepsilon >0}{\forall}
```
### 并集
```
$\overset{标记}{\bigcup\limits_{i=1}^n} A_i$
```
### 括号
[LaTeX 括号总结\_latex 尖括号\_han\_\_\_\_shuai的博客-CSDN博客](https://blog.csdn.net/han____shuai/article/details/49679335)  
[LaTex中的括号\_latex 括号\_fkdst2000的博客-CSDN博客](https://blog.csdn.net/qq_39683287/article/details/80689369)
```
角括号：\langle \rangle
```
### 字母上边的标记
```
加^号：\hat{x}

加横线：\overline{x}

加宽^：\widehat{x}

加波浪线：\Tilde{x}  \widetilde{x}

加一个点：\dot{x}

加两个点：\ddot{x}
```
### 空心符号
需要的宏包：\usepackage{amsfonts,amssymb}  
命令：\mathbb{}
### 多行对齐
用 split  
`&` 标注在每一行的对齐位置  
如果外面有一个括号就会报错，如下例  
第一行错误，第二行正确
```
\begin{equation}
\begin{split}

{\text{obj.} \ & \text{max}{\sum\limits_{l \in L}\,}{\sum\limits_{n \in N}\,}\lambda_{ln}{\sum\limits_{m \in N}\,}y_{lnm}} \\

\text{s.t.} \ & {{\sum\limits_{m \in N}\,}y_{lnm} \leq 1,\forall l \in L,n \in N,} \\

\end{split}
\end{equation}
```
### 多行公式分别编号 1a1b1c
```
\begin{subequations}

\begin{align}

\text{obj.} \ & \text{max}{\sum\limits_{l \in L}\,}{\sum\limits_{n \in N}\,}\lambda_{ln}{\sum\limits_{m \in N}\,}y_{lnm} \\

\text{s.t.} \ & {{\sum\limits_{m \in N}\,}y_{lnm} \leq 1,\forall l \in L,n \in N,} \\

& {{\sum\limits_{l \in L}\,}x_{lm}\gamma_{l} \leq R_{m},\forall m \in N,} \\

& {{\sum\limits_{l \in L}\,}\kappa_{l}{\sum\limits_{n \in N}{\lambda_{ln}{\sum\limits_{m \in N}{y_{lnm}d_{nmp}}}}} \leq K_{p},\forall p \in N,} \\

& {{\sum\limits_{l \in L}\,}\omega_{l}{\sum\limits_{n \in N}\,}\lambda_{ln}y_{lnm} \leq W_{m},\forall m \in N,} \\

& {y_{lnm} \leq a_{lnm}x_{lm},\forall l \in L,n \in N,m \in N,} \\

& {{\sum\limits_{l \in L}\,}{\sum\limits_{n \in N}\,}x_{ln}c_{ln} \leq B,} \\

& {x_{ln} \in \left\{ 0,1 \right\},y_{lnm} \geq 0,\forall l \in L,n \in N,m \in N.}

\end{align}

\end{subequations}
```
[latex数学公式之编号 - 知乎](https://zhuanlan.zhihu.com/p/634984148)
### 矩阵
[如何用latex编写矩阵（包括各类复杂、大型矩阵）？ - 知乎](https://zhuanlan.zhihu.com/p/266267223)

## word 公式转 latex 公式
word 中选中【公式】栏目，选中想复制的公式，打开【LaTex】选项，把复制公式时勾选为【MathML】被复制到剪贴板转换为纯文本  
![](/img/user/resources/attachments/20240616latex数学公式.png)
### mathml 转 latex
[MathML to LaTeX Converter](https://jgostick.github.io/mml2latex/)
## 花写字母
[【LaTex】如何输入英文字母的花体字？花体字最全总结\_latex花体字母-CSDN博客](https://blog.csdn.net/weixin_39589455/article/details/133846783)
### 花写 1
mathcal
### 花写 2
mathpzc
### 花写 3
```
\mathscr{} \usepackage{mathrsfs}
```
## 空心字母
mathbb
## 高级用法
[知乎上的LaTeX公式的使用心得 - 知乎](https://zhuanlan.zhihu.com/p/464115714?utm_id=0)