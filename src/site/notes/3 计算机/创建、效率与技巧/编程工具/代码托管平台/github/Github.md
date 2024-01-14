---
aliases: []
created: 2022-12-02 17:22:13+08:00
date created: 2023-07-05T11:13:20+08:00
date modified: 2024-01-13T19:21:09+08:00
dg-publish: true
tags: []
title: Github
updated: 2023-03-28 17:57:34+08:00
---

## github 是什么
github 提供的是一个代码管理平台。  
里面有很多代码，可以支持通过 git 进行提交和克隆等操作。

## github project
project 可以和某些仓库关联  
可以管理 issue 或者是自己添加的待做、在做和已完成  
可以和 pull request 关联  
可以用作项目进度管理

## github action
每次提交一个版本，都会运行一次 action，  
比如我就可以用 django 的 action，可以检查 django 项目是否可以正常启动，  
还有 python environment 的 action，可以检查 python 环境配置是否成功，并且运行 pytest 的测试。
### Python package
一个校验 python 环境和 python pytest 的 action
#### 有变量未定义报错
将下面第一行注释，改为第二行即可，表示即使报错，也 return 0  
\# flake8 . --count --select=E9,F63,F7,F82 --show-source --statistics  
flake8 . --count --exit-zero --select=E9,F63,F7,F82 --show-source --statistics

## github issue
使用软件的人或者开发者可以提出对软件该进建议或者 bug。  
也可以自己给自己写未来的规划，但是自己使用的话，不如直接使用 project。
### 如何导出为 csv?
[如何将GitHub问题导出到Excel？ - 问答 - 腾讯云开发者社区-腾讯云 (tencent.com)](https://cloud.tencent.com/developer/ask/sof/244210)
### Milestone
用来管理一类 issue 统一管理截止时间，并查看这一类 issue 的处理进度。

## github codespace
github 提供远程电脑，可以在上面写代码，github 提供的编辑器貌似只有 vscode，我用起来感觉不如本地。  
优势是可以自主配置环境。
### 通过 codespaces 搭建自己的服务器
[【热门教程】githab竟然免费送服务器？还能安装宝塔？\_哔哩哔哩\_bilibili](https://www.bilibili.com/video/BV1h84y1b7sD/?spm_id_from=333.337.search-card.all.click&vd_source=20cb3e7c6ad3d64f0eb2d763ff005080)