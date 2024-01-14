---
aliases: []
date created: 2023-07-24T20:25:32+08:00
date modified: 2024-01-14T17:35:03+08:00
dg-publish: true
tags: []
title: latex表格
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