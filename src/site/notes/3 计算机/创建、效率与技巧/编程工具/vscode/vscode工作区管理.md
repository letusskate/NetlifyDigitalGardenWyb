---
{"dg-publish":true,"permalink":"/3 计算机/创建、效率与技巧/编程工具/vscode/vscode工作区管理/","title":"vscode工作区管理"}
---


## .vscode 文件夹
可以建立 vscode 工作区设置，如配置 c 环境时的 settings.json 等，只在当前工作区生效

## 快捷键的工作区设置
无法为单个工作区设置快捷键，只能全局设置，除非借助插件。

## 如何设置工作区自定义扩展
在 VSCode 中，你可以通过在工作区的 `.vscode` 文件夹下创建一个 `extensions.json` 文件来设置工作区启用的 [vscode扩展](vscode扩展.md)。这个文件用于指定在该工作区中应启用的扩展。

```
{
  "recommendations": [
    "dbaeumer.vscode-eslint",
    "esbenp.prettier-vscode",
    "ms-python.python"
  ],
  "unwantedRecommendations": [
    "redhat.vscode-yaml"
  ]
}

```
字符串，也就是扩展的 identifier 可以在扩展页面右侧找到。  
此时在扩展搜索界面输入@recommand，或者 crtl+shift+p 输入 recommand 就可以查看工作去推荐的扩展，但不能实现扩展起停
