---
{"dg-publish":true,"permalink":"/3 计算机/创建、效率与技巧/msoffice/我的office trick/office搜索替换占位符/","title":"office搜索替换占位符"}
---


## 不使用通配符
^?表示一个任意字符  
## 使用通配符
- “ * ” 表示可以任意多个字符
- “ ? ” 表示任意单个字符  
替换所有 [1] 之类的 1 位的符号：`\[([.0-9])\]`  
替换所有 [123] 之类的 3 位的符号：`\[([.0-9])([.0-9])([.0-9])\]`  
替换所有三位的 `[123][abc]` 之类的符号：`\[???\]`  
替换多篇引文，如 `[23,102]`：`\[*,*\]`

反斜杠表示转义，圆括号表示分组，`[.0-9]` 表示任意数字