---
aliases: []
date created: 2023-07-05T19:58:07+08:00
date modified: 2024-01-13T19:21:06+08:00
dg-publish: true
tags: []
title: markdown
---

## 表格
如果格式正确却无法生成，试试在表格开头前输入回车

## 链接
markdown 支持链接到标题  
Github 会自动从标题中解析锚标记.所以你可以做到以下几点:
```
[Custom foo description](#foo)

# Foo
```
在上面的例子中,`Foo` 标题生成了一个带有名称的锚标记 `foo`  
**注意**:`#` 对于所有标题大小只有一个 `#`,锚名称和锚名称之间没有空格,锚标记名称必须小写,并且如果是多字则用短划线分隔.
```
[click on this link](#my-multi-word-header)

### My Multi Word Header
```

## 任务列表
- [ ] 未完成任务
- [x] 已完成任务