---
{"dg-publish":true,"permalink":"/1 工作与赚钱/科研技巧/论文写作/Latex/latex伪代码/","title":"latex伪代码"}
---


## 方案种类
一般会接触到的包有 algorithm、algorithmic、algorithmicx、algorithm2e 这四种包。

algorithm 用于给伪代码提供一个浮动体环境，防止其换页或其他因素导致的内容中断，从而跨页显示。

algorithmic 用于编辑伪代码的内容，一些 for、while、if 等语句通过该包中的命令进行编写。

algorithmicx 可以看作 algorithmic 的升级版，提供了一些自定义命令

algorithm2e 则是独立于 algorithmic 和 algorithmicx 的另一套伪代码环境，两套环境语法、排版上均不相同。

## latex2e
### 头文件的引用方式
#### 方案一
```
\usepackage[ruled,vlined,linesnumbered,inoutnumbered]{algorithm2e}
\SetKwRepeat{Do}{do}{while}
```
#### 方案二
```
% pseudocode

\usepackage[ruled,linesnumbered]{algorithm2e}

\SetKwRepeat{Do}{do}{while}
```
### 开始伪代码后可以配置的参数
```
\SetAlgoLined %取消拐弯
```
### 伪代码内部再写函数
[Latex伪代码中函数的写法\_latex function-CSDN博客](https://blog.csdn.net/ashtyukjhf/article/details/133552611)  
在定义后就可以调用，如果想调用写在定义前面，也完全可以。在 latex 中，想要定义函数必须先声明，因此声明在伪代码最前面即可。
### 实例

```text
\def\SetClass{article}
\documentclass{\SetClass}
\usepackage[french,boxed,vlined,linesnumbered,inoutnumbered,rightnl]{algorithm2e}
\begin{document}

\begin{algorithm}
  \KwIn{this text}
  \KwOut{how to write algorithm with \LaTeX2e}
  \SetKwData{Left}{left}\SetKwData{This}{this}\SetKwData{Up}{up}
  \SetKwFunction{Union}{union}\SetKwFunction{FindCompress}{findcompress}
  \BlankLine                                    % 加一行空行
    \For{$i\leftarrow 2$ \KwTo $l$}{
    \emph{special treatment of the line $i$}\;  % 斜体（强调）
    \For{$j\leftarrow 2$ \KwTo $w$}{
      \Left$\leftarrow$ \FindCompress{$Im[i,j-1]$}\;
      \Up$\leftarrow$ \FindCompress{$Im[i-1,]$}\;
      \This$\leftarrow$ \FindCompress{$Im[i,j]$}\;
      \If(\tcp*[f]{O(\Left,\This)==1}){\Left compatible with \This}{
        \lIf{\Left $<$ \This}{\Union{\Left,\This}}
        \lElse{\Union{\This,\Left}}
      }
      \If(\tcc*[h]{O(\Up,\This)==1}){\Up compatible with \This}{
        \lIf{\Up $<$ \This}{\Union{\Up,\This}}
        \tcp{\This is put under \Up to keep tree as flat as possible}
        \lElse{\Union{\This,\Up}}\tcc{\This linked to \Up}
      }
    }
    \lForEach{element $e$ of the line $i$}{\FindCompress{p}}
  }
  \caption{How to write algorithms}
\end{algorithm}
\end{document}
```

![](/img/user/resources/attachments/20240616latex伪代码.png)
### algorithm2e 相关教程
[用LaTeX优雅地书写伪代码——Algorithm2e简明指南 - 知乎](https://zhuanlan.zhihu.com/p/166418214)  
[zhuanlan.zhihu.com/p/653355024?utm\_id=0](https://zhuanlan.zhihu.com/p/653355024?utm_id=0)
### 调整代码字号
```
\documentclass{article}
\usepackage[linesnumbered,ruled,vlined]{algorithm2e}
\SetAlFnt{\fontsize{10}{12}\selectfont} % 设置字体大小为 10pt
\begin{document}

\begin{algorithm}
\KwData{Data}
\KwResult{Result}
\While{Condition}{
    Process data\;
    Update result\;
}
\caption{Algorithm Caption}
\end{algorithm}

\end{document}
```
## 相关教程
### algorithmicx
[LaTeX伪代码写法总结-腾讯云开发者社区-腾讯云](https://cloud.tencent.com/developer/article/2166781)  

### 例子与代码
[Latex写算法的伪代码排版\_latex 算法ruturn\_铭记\_的博客-CSDN博客](https://blog.csdn.net/lwb102063/article/details/53046265)

## 伪代码置顶后，无法调整伪代码和后面文字的间距
### 尝试 minipage 包裹
```

%% alg2
\vspace{-5pt}
\begin{center}
\begin{minipage}{\columnwidth}
\begin{algorithm}[H]
% \begin{algorithm}[htbp]
	{\fontsize{8.5}{9}\selectfont
		\SetKwFunction{full}{FullModelPlacement}%定义一个函数
		\SetKwProg{Fn}{def}{\string :}{}% %定义python样式的函数格式
		\KwIn{flow control strategy (\cref{section:design-Flow Scheduling})}
		% \KwOut{Submodular placement set $\Theta^T$}
		% output $\Theta^T$ $\leftarrow$ \full{T}

		\Fn{\full{$R$: list, X: set/list, $\Theta_0$: list}}{ %Python的类型注释写法
			$\Tilde{\Theta}_0 \leftarrow \Theta_0$, $k \leftarrow 0$\;
			\Do{$\text{if S1: }\varphi(\Tilde{\Theta}_{k})\geq \varphi(\Tilde{\Theta}_{k-1})\text{, else: }\varphi(\Tilde{\Theta}_{k})> \varphi(\Tilde{\Theta}_{k-1})$}{
			$k \leftarrow k+1$, $\Tilde{\theta}_k \leftarrow \emptyset $\;
			% \For{$\delta \in X \setminus \Tilde{\Theta}_{k-1} $}{
			% \For{$\text{if    }X\text{ is set: }\delta \in X \text{, else }\delta \in X \setminus \Tilde{\Theta}_{k-1}$}{
			\For{$\text{if \ {\rm typeof}}(X)\text{ is set: }\delta \in X \text{, else: }\delta \in X \setminus \Tilde{\Theta}_{k-1}$}{
				Solve $\varphi(\Tilde{\Theta}_{k-1}+\delta)$ in~\eqref{equation:optimal} with $R$, using flow control strategy~\cref{section:design-Flow Scheduling}\;

				\If{$\varphi(\Tilde{\Theta}_{k-1}+\delta) > \varphi(\Tilde{\Theta}_{k-1}+\iota), \forall \iota \in \Tilde{\theta}_{k}$}{
					$\Tilde{\theta}_k \leftarrow \{\delta\}$\;
				}
				\ElseIf{$\varphi(\Tilde{\Theta}_{k-1}+\delta) = \varphi(\Tilde{\Theta}_{k-1}+\iota), \forall \iota \in \Tilde{\theta}_{k}$}{
						$\Tilde{\theta}_k \leftarrow \Tilde{\theta}_k \cup \{\delta\}$\;
				}    

			}
			\If{$\Tilde{\theta}_k \neq \emptyset$}{
			%   $\Tilde{\Theta}_{k} \leftarrow \Tilde{\Theta}_{k-1} \cup \{ \iota \mid \text{Let } \iota \in \Tilde{\theta}_{k} \text{ be arbitrary}\}$\;
				$\Tilde{\Theta}_{k} \leftarrow \Tilde{\Theta}_{k-1} + \iota \text{, let } \iota \in \Tilde{\theta}_{k} \text{ be arbitrary}$\;
			\lElse{break}
				}
			} 
			\textbf{return} $\Theta \leftarrow \Tilde{\Theta}_{k-1}$\;
		}
	}
	\caption{Submodular full model placement (SFP)}\label{algorithm:2}
\end{algorithm}
\end{minipage}
\end{center}
\vspace{-5pt}
```

报错
```
[H] in two columns mode is not allowed for algorithms.
```

### 尝试 textfloatsep
```
{
\setlength{\textfloatsep}{-15pt} % 局部压缩间距
\begin{algorithm}[htbp]
	{\fontsize{8.5}{9}\selectfont
		\SetKwFunction{full}{FullModelPlacement}%定义一个函数
		\SetKwProg{Fn}{def}{\string :}{}% %定义python样式的函数格式
		\KwIn{flow control strategy (\cref{section:design-Flow Scheduling})}
		% \KwOut{Submodular placement set $\Theta^T$}
		% output $\Theta^T$ $\leftarrow$ \full{T}

		\Fn{\full{$R$: list, X: set/list, $\Theta_0$: list}}{ %Python的类型注释写法
			$\Tilde{\Theta}_0 \leftarrow \Theta_0$, $k \leftarrow 0$\;
			\Do{$\text{if S1: }\varphi(\Tilde{\Theta}_{k})\geq \varphi(\Tilde{\Theta}_{k-1})\text{, else: }\varphi(\Tilde{\Theta}_{k})> \varphi(\Tilde{\Theta}_{k-1})$}{
			$k \leftarrow k+1$, $\Tilde{\theta}_k \leftarrow \emptyset $\;
			% \For{$\delta \in X \setminus \Tilde{\Theta}_{k-1} $}{
			% \For{$\text{if    }X\text{ is set: }\delta \in X \text{, else }\delta \in X \setminus \Tilde{\Theta}_{k-1}$}{
			\For{$\text{if \ {\rm typeof}}(X)\text{ is set: }\delta \in X \text{, else: }\delta \in X \setminus \Tilde{\Theta}_{k-1}$}{
				Solve $\varphi(\Tilde{\Theta}_{k-1}+\delta)$ in~\eqref{equation:optimal} with $R$, using flow control strategy~\cref{section:design-Flow Scheduling}\;

				\If{$\varphi(\Tilde{\Theta}_{k-1}+\delta) > \varphi(\Tilde{\Theta}_{k-1}+\iota), \forall \iota \in \Tilde{\theta}_{k}$}{
					$\Tilde{\theta}_k \leftarrow \{\delta\}$\;
				}
				\ElseIf{$\varphi(\Tilde{\Theta}_{k-1}+\delta) = \varphi(\Tilde{\Theta}_{k-1}+\iota), \forall \iota \in \Tilde{\theta}_{k}$}{
						$\Tilde{\theta}_k \leftarrow \Tilde{\theta}_k \cup \{\delta\}$\;
				}    

			}
			\If{$\Tilde{\theta}_k \neq \emptyset$}{
			%   $\Tilde{\Theta}_{k} \leftarrow \Tilde{\Theta}_{k-1} \cup \{ \iota \mid \text{Let } \iota \in \Tilde{\theta}_{k} \text{ be arbitrary}\}$\;
				$\Tilde{\Theta}_{k} \leftarrow \Tilde{\Theta}_{k-1} + \iota \text{, let } \iota \in \Tilde{\theta}_{k} \text{ be arbitrary}$\;
			\lElse{break}
				}
			} 
			\textbf{return} $\Theta \leftarrow \Tilde{\Theta}_{k-1}$\;
		}
	}
	\caption{Submodular full model placement (SFP)}\label{algorithm:2}
\end{algorithm}
}
```
### 尝试 vspace*
```
\begin{algorithm}[htbp]
\end{algorithm}
% \vspace{-5pt}
\vspace*{-20pt}
```
成功
