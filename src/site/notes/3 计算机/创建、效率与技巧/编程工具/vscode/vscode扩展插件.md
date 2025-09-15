---
{"dg-publish":true,"permalink":"/3 计算机/创建、效率与技巧/编程工具/vscode/vscode扩展插件/","title":"vscode扩展插件"}
---


Chinese 简体中文插件  
code runner 运行大部分代码  
docs-markdown markdown 插件  
learn Vim 学习 vim 插件  
Svg Preview 查看 svg 矢量图插件  
GPT Runner 文件和 [chatgpt](../../AI/不同的ai/chatgpt/chatgpt.md) 对话  
todo tree 显示所有 todo  
grammarly 写文章纠正语法错误
## todo tree 设置
`(//|#|<!--|;|/\*|^|^[ \t]*(-|\d+.))\s*($TAGS)`  
改为  
`(%|//|#|<!--|;|/\*|^|^[ \t]*(-|\d+.))\s*($TAGS)`  
这样 latex 也可以识别 todo 了

最好是写在 settings.json 文件里
```
    // ...TODO-tree setting
    "todo-tree.regex.regex": "(%|//|#|<!--|;|/\\*|^|^[ \\t]*(-|\\d+.))\\s*($TAGS)",
```
## git 相关插件（[git](../git/git.md)）
### git lens
可以看到每一行是谁写的，其余功能如看历史图等，需要收费
#### 不小心进入了显示详细历史界面界面很混乱
点一下作者姓名就能回去
### git history
看当前分支的历史，同时可以进行历史记录的比较。  
比较方式：  
点击 git 图标，点击 git history 图标  
看到右侧列出的几个 commit  
选择一个 commit，选择 more，选择 select this commit for compare  
选择另一个 commit，选择 more，选择 compare with  
之后进入 file 选项卡，左侧有一栏变为 compare commits，点击进入就能看到两个版本的差异了
### git graph
仅看历史图，包含多个分支，非常漂亮
