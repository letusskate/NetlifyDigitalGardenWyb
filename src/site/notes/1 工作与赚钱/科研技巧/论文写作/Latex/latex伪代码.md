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
### 引用方式
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
### 写的参数
```
\SetAlgoLined %取消拐弯
```
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
### algorithm2e 网页
[用LaTeX优雅地书写伪代码——Algorithm2e简明指南 - 知乎](https://zhuanlan.zhihu.com/p/166418214)  
[zhuanlan.zhihu.com/p/653355024?utm\_id=0](https://zhuanlan.zhihu.com/p/653355024?utm_id=0)
## 相关教程
### algorithmicx
[LaTeX伪代码写法总结-腾讯云开发者社区-腾讯云](https://cloud.tencent.com/developer/article/2166781)  

### 例子与代码
[Latex写算法的伪代码排版\_latex 算法ruturn\_铭记\_的博客-CSDN博客](https://blog.csdn.net/lwb102063/article/details/53046265)