---
{"dg-publish":true,"permalink":"/1 工作与赚钱/科研技巧/论文写作/Latex/latex图片/","title":"latex图片"}
---


## latex 插入 svg
### 碰运气方式

#### 引入包
```
% svg (can not use)

\usepackage[inkscapelatex=false]{svg}
```

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
[svg 转 pdf](../../../../3%20计算机/创建、效率与技巧/非编程软件/编辑与格式/SVG转PDF.md#svg%20转%20pdf)
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
Latex 提供了一些命令来控制图片的位置。我们可以通过使用 `\begin{figure}[位置选项]` 来控制图片的位置。位置选项可以有 h、t、b、p、!这五个，分别表示以下含义：
- h: 表示放在当前位置，不过有时由于论文的格式限制，可能放不下。
- t: 表示放在页面的顶部。
- b: 表示放在页面的底部。
- p: 表示放在单独一页。
- !: 表示可以忽略一些限制，例如允许超过页面上限等。
#### 方法一
```
\begin{figure}[htbp]
```
#### 方法二
解决办法  
要想将参考文献调整到图片后，可以在论文开头引入包：`\usepackage[section]{placeins}`  
但这样的话图片只会在 section 内，我们期望的是图片跟随着文字下方。也就是跟随在 subsection 之内。但没有 `\usepackage[subsection]{placeins}` 的参数，因此，可以在图片下方加上 `\FloatBarrier`，这样图片就不会浮动  
    如：
```
\usepackage[section]{placeins}

这是一段文字。

\begin{figure}[t]          
include 一张图片。  
\end{figure}

\FloatBarrier

```
### 图片大小
```
\includegraphics[scale=0.5]{filename}
\includegraphics[width=2.5in]{fig1}
```
### 多图插入
相关库，需要二选一，同时用会报错  
subfig(不推荐，如果在 figure 中使用 float 环境，会导致图片上放有空白，不使用 float 环境又会导致图片之间间距太大)
```
% \usepackage[caption=false,font=normalsize,labelfont=sf,textfont=sf]{subfig}
% %% wyb more beautiful subfig
% \usepackage[caption=false,font=footnotesize,labelfont=rm,textfont=rm]{subfig}
% %% end wyb more beautiful subfig
```
subcaption（推荐，但需要自己设置字体格式，比较麻烦）
```
%% wyb subcaption 
\usepackage{graphicx}
% \usepackage{caption}
\usepackage{subcaption}
%% end wyb subcaption 
```
#### subfloat
[Latex(2):LaTex图片、公式、数学符号、伪代码、参考文献引用学习记录\_latex乘号-CSDN博客](https://blog.csdn.net/BIT_HXZ/article/details/126999182)
```
\begin{figure}[!t]
	\centering %居中显示
	\subfloat[picture 1.]{\includegraphics[width=1.5in]{fig1}%picture 1是子图名称
		\label{fig_first_case}} %子图标签
		\hspace{0.1in} %调整横向间距 0.1in是可以调整的数值
		\vspace{0.2in} %调整纵向间距 0.2in是可以调整的数值
	\subfloat[picture 2.]{\includegraphics[width=1.5in]{fig1}
		\label{fig_second_case}}
		\hfil %图像换行（双栏时换栏也是换行的意思）
	\subfloat[picture 3.]{\includegraphics[width=1.5in]{fig1}
		\label{fig_first_case}} 
		\hspace{0.1in} 
	\subfloat[picture 4.]{\includegraphics[width=1.5in]{fig1}
		\label{fig_second_case}}	
	\caption{Pictures.}%图的名称
	\label{fig_sim}%图的标签，用于在文章中快速引用
\end{figure}
```
![](/img/user/resources/attachments/20240401latex图片.png)
#### minipage
```
\begin{figure}[htbp]
	\centering
	\begin{minipage}{0.49\linewidth}
		\centering
		\includegraphics[width=0.9\linewidth]{Figure/chutian.JPG}
		\caption{chutian1}
		\label{chutian1}%文中引用该图片代号
	\end{minipage}
	\begin{minipage}{0.49\linewidth}
		\centering
		\includegraphics[width=0.9\linewidth]{Figure/chutian.JPG}
		\caption{chutian2}
		\label{chutian2}%文中引用该图片代号
	\end{minipage}
	%\qquad
	%让图片换行，
	
	\begin{minipage}{0.49\linewidth}
		\centering
		\includegraphics[width=0.9\linewidth]{Figure/chutian.JPG}
		\caption{chutian3}
		\label{chutian3}%文中引用该图片代号
	\end{minipage}
	\begin{minipage}{0.49\linewidth}
		\centering
		\includegraphics[width=0.9\linewidth]{Figure/chutian.JPG}
		\caption{chutian4}
		\label{chutian4}%文中引用该图片代号
	\end{minipage}
\end{figure}
```
#### subfigure
```
\begin{figure*}[thbp]
    \centering
    \begin{subfigure}[b]{0.162\textwidth}
        \centering
        \includegraphics[width=\textwidth,trim=0cm 0cm 4cm 1.5cm, clip]{graph/motivation-DP-Graph5.pdf}
        % \captionsetup{font={\footnotesize,bf,stretch=1.25}}
        \captionsetup{font=scriptsize, justification=centering}
        \vspace{-0.6cm}
        \caption{DP in edge.}
        \label{fig:motivation-DP}
    \end{subfigure}
    ~~
    \begin{subfigure}[b]{0.162\textwidth}
        \centering
        \includegraphics[width=\textwidth,trim=0cm 0cm 4cm 2cm, clip]{graph/motivation-PPTP-TPPP.pdf}
        % \captionsetup{font={\footnotesize,bf,stretch=1.25}}
        \captionsetup{font=scriptsize, justification=centering}
        \vspace{-0.6cm}
        \caption{MP in edge.}
        \label{fig:motivation-PPTP}
    \end{subfigure}
    ~~
    \begin{subfigure}[b]{0.162\textwidth}
        \centering
        \includegraphics[width=\textwidth,trim=0cm 0cm 4cm 2cm, clip]{graph/motivation-multitask-multitaskgraph.pdf}
        % \captionsetup{font={\footnotesize,bf,stretch=1.25}}
        \captionsetup{font=scriptsize, justification=centering}
        \vspace{-0.6cm}
        \caption{Multi task in one GPU.}
        \label{fig:motivation-task}
    \end{subfigure}
    ~~
    \begin{subfigure}[b]{0.162\textwidth}
        \centering
        \includegraphics[width=\textwidth,trim=0cm 0.05cm 4cm 2cm, clip]{graph/motivation-batchsize-Graph4.pdf}
        % \captionsetup{font={\footnotesize,bf,stretch=1.25}}
        \captionsetup{font=scriptsize, justification=centering}
        \vspace{-0.6cm}
        \caption{Batch processing.}
        \label{fig:motivation-batch}
    \end{subfigure}
    ~~
    \begin{subfigure}[b]{0.162\textwidth}
        \centering
        \includegraphics[width=\textwidth,trim=0cm 0cm 4cm 2cm, clip]{motivation-2-schedule-Graph1.pdf}
        \captionsetup{font=scriptsize, justification=centering}
        \vspace{-0.6cm}
        \caption{Centralized schedule.}
        \label{fig:motivation-service_placement}
    \end{subfigure}
    ~~
    \begin{subfigure}[b]{0.162\textwidth}
        \centering
        \includegraphics[width=\textwidth,trim=0cm 0cm 0cm 0.7cm, clip]{graph/motivation-2-modelload-Graph3.pdf}
        % \captionsetup{font={\footnotesize,bf,stretch=1.25}}
        \captionsetup{font=scriptsize, justification=centering}
        \vspace{-0.6cm}
        \caption{Load models to GPU.}
        \label{fig:motivation-model_load}
    \end{subfigure}
    % \vspace{-0.3cm}
    \caption{\EPARAbf is committed to serving real-time categorized AI parallel inference in edge.}\label{fig:motivation}
    \vspace{-0.1cm}
\end{figure*}
```
#### 什么不能直接在一个 figure 中 include 多张
这样做必须减小图片大小，因为多个直接 include 会存在 margin。
```
\begin{figure}[!t]
    % \centering
    % \vspace{-5pt}
    \includegraphics[width=0.239\textwidth, trim=1cm 0cm 2cm 0cm, clip]{graph/4all_compare-Graph3.pdf}
    \label{real-world compare fig_first_case_value}
    % \hfil
    % ~~
    \includegraphics[width=0.239\textwidth, trim=1cm 0cm 2cm 0cm, clip]{graph/4all_compare-Graph2.pdf}%
    \label{real-world compare fig_second_case_timecost}
    \caption{Real-world comparison of optimal value and real-time.}\label{fig:real-world compare}
    \vspace{-5pt}
\end{figure}
```
#### 多图垂直居中
[zhihu.com/question/63029836](https://www.zhihu.com/question/63029836)  
[subfloat的子图如何垂直居中对齐？ - LaTeX问答](https://ask.latexstudio.net/ask/question/7338.html)
### 图片空白裁剪
裁剪顺序：左下右上
#### 裁剪前
```
\centering
\includegraphics[width=1\textwidth]{figures/learning.pdf}
\caption{An overview of our dual-channel model framework.}
\label{fig:framework}
\end{figure*}
```
#### 裁剪后
```
\begin{figure*}[t]
\centering
\includegraphics[width=1\textwidth, trim=1cm 0cm 1cm 0cm, clip]{figures/learning.pdf} 
%  left, botton, right,top
\caption{An overview of our dual-channel model framework.}
\label{fig:framework}
\end{figure*}
```
[Site Unreachable](https://blog.csdn.net/weixin_41862755/article/details/133786408)
### 通用实例
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
