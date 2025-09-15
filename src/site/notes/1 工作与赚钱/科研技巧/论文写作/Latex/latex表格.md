---
{"dg-publish":true,"permalink":"/1 工作与赚钱/科研技巧/论文写作/Latex/latex表格/","title":"latex表格"}
---


## 网页教程
[Latex 制作表格_latex表格-CSDN博客](https://blog.csdn.net/TH_guan/article/details/124878398)
## 单元格内换行
1.调用包 usepackage{makecell}  
2.在需要换行的文字上添加\makecell，并在换行处使用 `\\`， 比如 demo 中的“Student Number”, 可以写为 `\makecell{Student \\ Number} `  
调整后：  
```
\resizebox{\textwidth}{!}{  
\begin{tabular}{cccccccc}

\toprule

\textbf{Name} & \textbf{\makecell{Student \\ Number}} &\textbf{Gender} &\textbf{\makecell{Program \\ Duration}} & \textbf{\makecell{Enrollment \\ Date}}

&\textbf{\makecell{Education \\ Date}} &\textbf{major} &\textbf{Schooling} \\

\hline  
\end{tabular}  
}  
```
![image4](/img/user/resources/attachments/image4 1.png)
## 插入表注与编号
```
\begin{table}[htbp]

\centering

\caption{Notations}

\label{table:notations}

xxxxxx

\end{table}
```
### 引用编号
`\ref{table:notations}`
## 设置列宽
`\begin{tabular}{|p{4in}|c|c|c|c|c|c|} \hline`  
固定列宽可以使⽤ array 宏包的 p{2cm} 系列命令，如果需要指定⽔平对齐⽅式，可以使⽤下⾯的形式 `>{\centering}p{2cm}` 实现，但如果使⽤这种⽅式，缺省情况下不能使⽤ `\\` 换⾏，需要使⽤ `\tabularnewline` 代替。为了仍然使⽤ `\\` 换⾏，需要在导⾔区加上下⾯的代码：
```

\usepackage{array}

\newcommand{\PreserveBackslash}[1]{\let\temp=\\#1\let\\=\temp}

\newcolumntype{C}[1]{>{\PreserveBackslash\centering}p{#1}}

\newcolumntype{R}[1]{>{\PreserveBackslash\raggedleft}p{#1}}

\newcolumntype{L}[1]{>{\PreserveBackslash\raggedright}p{#1}}

```
使⽤ C{3cm} 命令即可指定该列宽度为 3cm，并且⽂字居中对齐，左对齐和右对齐命令分别是 L{2cm} 和 R{2cm}。  
下⾯是⼀个的例⼦：
```

\begin{table}[htbp]

\centering\caption{\label{tab:test}2000 和~2004 年中国制造业产品的出⼝份额}

\begin{tabular}{L{2cm}C{2cm}R{2cm}}

\toprule

& 2000 & 2004 \\

\midrule

钢铁 & 3.1 & 5.2 \\

化学制品 & 2.1 & 2.7 \\

办公设备及电信设备 & 4.5 & 15.2 \\

汽车产品 & 0.3 & 0.7 \\

纺织品 & 10.4 & 17.2 \\

服装 & 18.3 & 24\\

\bottomrule

\end{tabular}

\end{table}
```
### 设置宽度同时居中
`>{\centering}p{0.6cm}`

## 竖着写文字
### 简单方式
`\multirow{3}{*}{\rotatebox[origin=c]{90}{\textbf{Flow}}}`
### 简单竖直居中
```
\multirow{3}{*}{\centering\smash{\rotatebox[origin=c]{90}{\textbf{Flow}}}}& PIAS~\cite{alizadehPFabricMinimalNearoptimal2013}, etc& min FCT& / & No &Lat.& DCN \\
```
### 如果还是无法水平居中，用 vspace
```
    \multirow{3}{*}{\hspace{-0.1cm}\centering\smash{\rotatebox[origin=c]{90}{\textbf{Flow}}}}& PIAS~\cite{alizadehPFabricMinimalNearoptimal2013}, etc& min FCT& / & No& DCN \\
```
（可以配合 p{0em}在开头使用以缩小竖着的那一列的列宽）但是不建议，建议 setlength
### 如果还是无法竖直居中，用空格
```
 \
 $ \ $
```

### 如果无法调整竖着写的列的列宽
那是由于默认的字符和边线的间距导致。  
在 begin tabular 之前的上一行加入 `\setlength{\tabcolsep}{1.4pt}` 设置默认间距即可。

## 调整表格边线和字符的默认间距
`\setlength{\tabcolsep}{1.4pt}`
### 调整默认间距的例子
```
\begin{table}[!t]
    \begin{center}
    \resizebox{1\linewidth}{!} {
        \setlength{\tabcolsep}{1.4pt} % 消除默认保留的水平间距（文字和表格边界）
    \begin{tabular}{|p{0.85em}|c||c|c|c|c|c|} % 第一列太宽 p{0cm}不能居中，>{\centering}p{0.6cm}就能居中了
    \hline
    \multicolumn{2}{|c||}{\multirow{2}{*}{\textbf{Schemes}}}  & \multicolumn{3}{c|}{\textbf{Resource Manage}}& \multicolumn{2}{c|}{\textbf{Application}} \\
    \cline{3-7}
	\end{tabular}
    }
    \end{center}
    \vspace{-5pt}
    \caption{Summary of prior works and comparison to \nasa}\label{table:related}
    \vspace{-15pt}
\end{table}
```