---
{"dg-publish":true,"permalink":"/0 日记与提升/笔记技巧/onenote/onenote操作技巧/onenote公式/","title":"onenote公式"}
---


## 公式输入
### 网页资源
[OneNote 数学公式输入方法大全 - 知乎](https://zhuanlan.zhihu.com/p/459539805)  
[Word - 快速输入数学公式 | JacobZ](https://zyxin.xyz/blog/2017-08/word-math/)
### 文件资源
[https://www.cs.bgu.ac.il/\~khitron/Equation Editor.pdf](https://www.cs.bgu.ac.il/~khitron/Equation%20Editor.pdf)  
[unicode.org/notes/tn28/UTN28-PlainTextMath-v3.pdf](http://unicode.org/notes/tn28/UTN28-PlainTextMath-v3.pdf)  
另外，本地存有这个 pdf，储存了所有 onenote 公式方法，Equation Editor.pdf。

## Bug
公式编辑器似乎有 bug，如果我打一个超长公式然后复制其中一段，可能会导致 OneNote 崩溃。作为 Office 公式的熟练使用者，我的公式长度可达如下：（这个例子似乎还不足以导致崩溃）  
█(&(Mz)\[▁(⬄0) ,i_2,j_2,W_2 \]∈Zp^\[Q\] @=&∑\_(w∈{0,1}, ∆i,∆j∈{−1,1})▒(⟡000000iii x\[i_2−∆i\] M\_(1,w,W_2 \[j_2−∆j\],∆i,∆j) ┤ @&⟡(∑\_(w∈{0,1},∆i,∆j∈{−1,1})▒1) ├ ⟡0+(1−x\[i_2−∆i\]) M\_(0,w,W_2 \[j_2−∆j\],∆i,∆j) )z\[▁(⬄0) ,[i_2−∆i](https://www.zhihu.com/search?q=i_2%E2%88%92%E2%88%86i&search_source=Entity&hybrid_search_source=Entity&hybrid_search_extra=%7B%22sourceType%22%3A%22answer%22%2C%22sourceId%22%3A1525594474%7D),j_2−∆j,W_2 {(j_2−∆j)→w}\].)  
排版出来长这个样子：  
![image5](/img/user/resources/attachments/image5.jpeg)

公式效果  
当然 Unicode Math 很难直接打出来，上面的公式用到了 \eqarray \sum \doubleZ \sum \inc \hphantom \vphantom \to 等等自动替换文本。  
另外，OneNote COM **接口匮乏**，写的脚本（比如提取所有论文笔记的标题之类的）都得疯狂进行 XML 操作，而且还有 [bug](https://link.zhihu.com/?target=https%3A//github.com/GeeLaw/onenote-object-model/blob/master/docs/events.md)。