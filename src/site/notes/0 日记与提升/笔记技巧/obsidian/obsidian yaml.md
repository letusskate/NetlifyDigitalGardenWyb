---
{"dg-publish":true,"permalink":"/0 日记与提升/笔记技巧/obsidian/obsidian yaml/","title":"obsidian yaml"}
---


## 写 yaml 有用吗
[yaml](../../../3%20计算机/编程语言和语法/yaml.md)  
[Obsidian 的 YAML Front matter 介绍 - 知乎](https://zhuanlan.zhihu.com/p/370113792)
## yaml 相关插件
linter  
dataview  
metaedit  
yaml-bulk-edit  
## yaml 内容
官方支持：tags，aliasis，cssclass  
自己常用：title，last update
## yaml 的批量修改
### python 脚本
[我的脚本](../../../resources/Scripts/20230711edit_yaml/edit_label.py)
#### 环境
`AttributeError: module 'frontmatter' has no attribute 'loads'`  
应该 pip install python-frontmatter
### vscode 全局查找替换
去 vscode 中，打开工作区，使用全局查找和替换
### 网上教程
[为 obsidian 中的文件批量添加 front matter - 习吾学](https://xwlearn.com/howto-add-frontmatter-in-batch-for-files-in-obsidian/)  
[請問是否有批量添加標籤的功能？ - 疑问解答 - Obsidian 中文论坛](https://forum-zh.obsidian.md/t/topic/6442)