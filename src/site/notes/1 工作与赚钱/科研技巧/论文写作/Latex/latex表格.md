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
## 设置行宽
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