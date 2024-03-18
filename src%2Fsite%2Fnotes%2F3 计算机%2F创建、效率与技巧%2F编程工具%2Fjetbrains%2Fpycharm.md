---
aliases: []
created: 2023-01-04 15:42:44+08:00
date created: 2023-07-05T11:13:20+08:00
date modified: 2024-01-13T19:21:07+08:00
dg-publish: true
tags: []
title: pycharm
updated: 2023-02-15 14:23:54+08:00
---

## pycharm 通过 ide 内可视化操作直接上传 github
### 相关博客
[(15条消息) PyCharm中使用Git/GitHub详细步骤（图文详解）\_小白典的博客-CSDN博客](https://blog.csdn.net/Q0717168/article/details/108719275)
### 1.配置 pycharm 中的 git
启动 PyCharm，点击【File】→【Settings】→【Version Control】→【Git】，选择 Git 可执行文件路径（系统安装 git 后此处会默认显示路径），点击【Test】，路径下会显示当前 Git 版本，图中⑥
### 2.配置 PyCharm 中的 GitHub：
点击【File】→【Settings】→【Version Control】→【GitHub】，点击【Log In via GitHub】
### 3.授权 GitHub 给 PyCharm：
①点击【Authorize in GitHub】，②登录 GitHub，③输入收到的 GitHub 验证码，进行验证  
验证通过后回到 PyCharm 中，选择 GitHub 账号，修改连接超时时间，点击【OK】
###  4.建立远程仓库并提交代码：
点击【VCS】→【Import into Version Control】→【Share Project on GitHub】  
填写仓库名及远程名，描述可不填写，若填写必须是英文，不可出现汉字、空格、符号及换行符，然后点击【Share】  
点击【Share】后弹出下图弹窗，可修改提交信息，默认全选即可，点击【Add】  
成功配置 Git 及 GitHub 后页面右上角出现 git 操作快捷图标，log 中提示 GitHub 上创建空仓库成功  
提交一段代码，点击提交按钮（快捷键 Ctrl+K）→勾选需提交的信息→输入提交内容→点击【Commit】提交  
若上一步并非 Commit 和 push 同时进行，则应增加以下步骤点击 push 图标（快捷键 Ctrl+Shift+K），选择提交的信息，点击【Push】  
浏览器中登录 GitHub 查看仓库中的文件，已经出现 push 九九乘法表代码
### 5.PyCharm 中分支管理：
默认仅有 master 分支，点击右下角 master 分支，点击【+New Branch】新建分支  
创建分支，输入分支名称后点击【Create】  
切换分支，点击右下角分支名称，选择要切换的分支，点击【Checkout】后，等待分支切换成功  
在分支上编写并提交代码，提交方式和上文相同，提交页面左下角及整个页面右下角会显示当前分支  
分支代码提交名 push 后，可合并分支，首先切换到要合并的分支上（此处切到 master 主线），点击分支名称，选择要被合并的分支，点击【Merge into Current】，等待合并成功  
分支合并后即可删除分支，删除分支必须先切换到其它分支，如：共有 master 和 dev 分支两个分支，若要删除 dev，必须先切换到 master 上，点击左下角 Git，选择要删除的远程和本地分支，点击删除图标即可

## pycharm 通过可视化操作上传 gitee
[(23条消息) pycharm+gitee环境搭建（超详细）\_xcntime的博客-CSDN博客](https://blog.csdn.net/xcntime/article/details/115479384)

## pycharm 使用 WSL
[Configure an interpreter using WSL \| PyCharm Documentation (jetbrains.com)](https://www.jetbrains.com/help/pycharm/using-wsl-as-a-remote-interpreter.html)

## pycharm 快捷键
Alt+enter 自动纠错（引入库的时候很好用）  
Crtl+ 鼠标左击 查看定义的位置（查看函数的时候很好用）  
Crtl+q 查看代码文档

## Pycharm scientific mode
可以类似 jupyter，实现代码一块一块执行  
如果分块执行很长的输入代码，会导致电脑卡死。如果文件整体一起执行就没关系，非常快速。  
读取 40000 个数据这么长的列表，大概需要 3min。
### 开启 scientific mode
点击右上角搜索，输入 scientific mode，之后开启就可以了。

## pycharm 运行 sh 文件
然后打开 pycharm 项目，左上角 File 选择 Setting，依次点击如下顺序按钮。注意：第 4 步添加路径记得要加上英文双引号！！！  
![image1](/img/user/resources/attachments/image1-10 2.png)

**
## Pycharm shared indexes
### 官方文档
[Shared indexes \| PyCharm Documentation (jetbrains.com.cn)](https://www.jetbrains.com.cn/help/pycharm/shared-indexes.html)
### 含义
这些索引可以共享，使得初始化项目的时候不需要再计算生成新的 local 的索引。
## pycharm terminal 环境变量问题
重启 pycharm 才能刷新环境变量，重开 terminal 没用