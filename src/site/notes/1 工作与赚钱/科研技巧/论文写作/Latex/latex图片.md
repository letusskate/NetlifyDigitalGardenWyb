---
{"dg-publish":true,"permalink":"/1 工作与赚钱/科研技巧/论文写作/Latex/latex图片/","title":"latex图片"}
---


## latex 插入 svg
### 碰运气方式
#### 引入包
```
\usepackage{svg}
\svgsetup{
    inkscapeexe = your_path/inkscape.exe, % 指向 inkscape.exe 的路径
    inkscapelatex = false                 % 一定程度上修复导入后图片文字溢出几何图形的问题
}

```
#### 插入图片
```
\begin{figure}[ht]
    \centering                                    % 图片居中
    \includesvg[scale = 1]{your_file_name.svg}    % 你的 .svg 文件路径
    \caption{some_caption} \label{img:some_label} % 插入图片标题及标签
\end{figure}
```
### 方式
#### 格式转化
Inkspace svg 转 pdf，之后插入  
[svg 转 pdf](../../../../3%20计算机/创建、效率与技巧/非编程软件/编辑与格式/格式转化.md#svg%20转%20pdf)
#### 引入包
```tex
\usepackage{graphicx} % 需使用包
```
#### 插入
```tex
\begin{figure}[h]
\includegraphics{filename}
\end{figure}
```
### 网页资源
[Latex 插入矢量图 - 知乎](https://zhuanlan.zhihu.com/p/359081998)  
[Latex 插入 svg 图片\_svg latex\_无聊就去玩一玩的博客-CSDN博客](https://blog.csdn.net/weixin_43852511/article/details/105599887)

## 图片插入格式
### 图片上下间距
```
1. \vspace{-0.8cm} %调整图⽚与上⽂的垂直距离；

2. \setlength{\belowdisplayskip}{3pt}和{\setlength\abovedisplayskip{0pt}分别调整图⽚/公式/表格与下⽅展⽰或上⽅展⽰的内容的距离，调整距离的单位为pt或cm。

3. \setlength{\abovecaptionskip}{0.cm} %调整标题上⽅的距离

4. \setlength{\abovecaptionskip}{0.cm} %调整标题下⽅的距离；
```
### 图片位置不正确
#### 方法一
```
\begin{figure}[htbp]
```
#### 方法二
```
\usepackage[section]{placeins}

这是一段文字。

\begin{figure}[t]          include 一张图片。  \end{figure}

\FloatBarrier

```
### 图片过大
```
\includegraphics[scale=0.5]{filename}
\includegraphics[width=2.5in]{fig1}
```
### 实例
```
 \centerline{\includegraphics[angle=90,height=1\textheight,width=1\textwidth]{图片文件名称}}

%命令的意思 图片居中（ 旋转90  高度为1倍页面文本高度   宽度为1倍页面文本宽度）

%要注意 \centerline{包含图片插入命令，图片参数，以及图片文件名称}

```

```
\begin{figure}[!t]

\centering

\includegraphics[width=2.5in]{fig1}

\caption{Simulation results for the network.}

\label{fig_1}

\end{figure}
```
### 相关教程
[解决‘LaTex图片插入右边显示不完全以及不能插入图片到特定位置’\_latex 多个子图显示不全\_hanaif的博客-CSDN博客](https://blog.csdn.net/hanjushi2/article/details/82961412)  
[解决latex图片浮动的问题\_latex图片飘动\_其实也很简单的博客-CSDN博客](https://blog.csdn.net/qq_34845880/article/details/124999338)  
[关于LaTex 插入图片的方法\_vscode下latex 插入图片\_东海深蓝的博客-CSDN博客](https://blog.csdn.net/m0_71303814/article/details/128111177)
## 图片编号
[latex插图编号\_LaTex技巧[26]：Latex重新为图片编号\_Bachnroth的博客-CSDN博客](https://blog.csdn.net/weixin_35649491/article/details/114723937)  
[Latex图片编号详解\_笔记大全\_设计学院](https://www.python100.com/html/90566.html)