---
aliases: []
created: 2022-11-30 11:34:04+08:00
date created: 2023-07-05T11:13:20+08:00
date modified: 2024-01-13T19:21:07+08:00
dg-publish: true
tags: []
title: vim使用技巧
updated: 2023-01-12 18:05:11+08:00
---

## vim 使用技巧
### vim 心得
使用 vim 提高键入效率的关键：想办法让操作变得可重复。
### 设置与改键
把 capslk 改为单独摁=esc，与其他按键一起按=crtl。
### 模式切换
由 normal mode 切换至 insert mode，有两种方法：换到光标之前用 i；切换到光标之后用 a。（i=insert、a=after）
### 小技巧
#### vim 中模式命令输入错误怎么办
按 esc 进入 normal mode，就会取消之前预输入的命令，如 g。
#### vim 中英文输入法切换问题
按 esc 进入 normal 模式后，中文输入法就与 normal 模式冲突，必须切换回英文输入法。即按 esc 后按一次 shift。  
[解决恼人的 vim 中文输入法切换问题[视频] - 知乎](https://zhuanlan.zhihu.com/p/49411224?utm_id=0)
### Normal mode（选择）
#### 移动与寻找
前进到下一个和回退到上一个：word 用 w 和 b；WORD 用 W 和 B。（w=word、b=back）  
前进到下一个末尾和退回到上一个末尾：word 用 e 和 ge；WORD 用 E 和 gE（e=end、g=上一个）  
本行寻找某字符：向后用 f+ 字符；向前用 F+ 字符（f=find）  
本行寻找某字符的前一个字符：向后用 t+ 字符；向前用 T+ 字符（t=until）  
切换到本行下一个 f/F/t/T 的结果：用;  
切换到本行上一个 f/F/t/T 的结果：用,  
切换到本行第一个字符：0，第一个非空字符^  
切换到本行最后一个字符：\$，最后一个非空字符 g\_  
跳段：下一段用}；上一段用{  
跳半个屏幕：向上跳用 crtl u，向下跳用 crtl d（u=up，d=down）  
文件搜索字符：向下搜索用/{pattern}+enter，向上搜索用?{pattern}+enter  
跳到下一个/?文件搜索的结果：向下用/+enter；向上用?+enter；  
**重复上次光标移动（motion）：重复上次全文件搜索用 n；相反方向重复上次全文件搜索用 N**  
找到下一个## 开头的 md 二级标题：/## .\*  
数字 + 操作实现多次操作：{count}{command}，如 3f\[就会跳到本行第三个\[  
去 import 的 file 或者去定义的位置：gf（go to file）  
去下一行/上一行的当前位置（比 j 更精确）：gj/gk  
去变量被定义的位置：gd（go to definition）  
去文件最开头：gg  
去文件第 line 行：{line}gg  
去文件结尾：G  
找到对应的括号{\[()\]}：%  
返回光标上次所在位置：crt+o
#### 变更与编辑
删除：d（d=delete）；删除本 word 用 dw 删除整行用 dd；删除到行末尾但是保留行用 D 或者 d\$；删除到同行特定字符用 df{letter}；删除到同行特定字符的前一个用 dt{letter}；删除到全文中的特定字符的前一个用 d/{pattern}；删除全文用 ggdG  
改变：c（c=change）；c 与 d 相同，相当于 d+i；只是 c 后的 i 操作与 d 操作被视为同一个操作，更具有可重复性；改变一行用 cc，改变到行尾但保留行用 C  
操作 + 数字 + 实施对象或位置实现多次操作：{operator}{count}{motion}，如 d2w 会删除 2 个 word  
撤销与回复：撤销用 u（undo），恢复用 crtl+r（redo）  
**重复上次修改（change）：重复上次修改用.**；一次修改是指 d{motion}、i{typeSomething}\<ESC\>、c{typeSomething}\<ESC\>  
**文本对象：通过 a/i 进入文本对象（a=around，i=inner）**；文本对象包括（w=word，s=sentence，p=paragraph，"=引号）；格式为{a/i}{text-object}；dw 可以改为 diw，这样无论光标在 word 的哪个位置，都能准确删除；di" 可以删除光标之后第一个双引号内部的所有内容 ，无论光标是否在双引号里面。da" 可以删除包括引号的全部内容，无论光标是否在引号里面。同理还有 da(，di\[，di{等用法。  
**复制粘贴：通过 y{motion}复制，通过 p 粘贴**；yt$ 复制到行末，yf{letter}复制到特定字符。  
更改大小写：gU{motion}改为大写，gu{motion}改为小写。  
增加减少缩进：>{motion}向右缩进，<{motion}向左缩进。  
格式化代码：={motion}格式化代码