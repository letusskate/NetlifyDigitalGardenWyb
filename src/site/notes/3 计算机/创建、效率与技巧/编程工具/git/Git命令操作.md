---
aliases: []
created: 2023-02-04 20:17:12+08:00
date created: 2023-07-05T11:13:20+08:00
date modified: 2024-01-13T19:21:07+08:00
dg-publish: true
tags: []
title: Git命令操作
updated: 2023-04-09 15:08:26+08:00
---

## 同步仓库到两个云端
[git同步两个云端仓库](git进阶操作/git同步两个云端仓库.md)
## git 冲突解决
[使用命令行解决合并冲突 - GitHub 文档](https://docs.github.com/zh/pull-requests/collaborating-with-pull-requests/addressing-merge-conflicts/resolving-a-merge-conflict-using-the-command-line)
### 如何避免 git 冲突
discard 本地的所有更改，之后 pull 肯定没有任何问题了。pull 之后再把新写的代码粘贴上去。  
如果直接 commit 了，那无法撤销 commit，只能选择保留的内容，之后作为“解决冲突”的 commit 提交。

## 通过 git 初始化并 提交到云端
初始化：  
`git init`  
添加文件到暂存区：  
`git add 'git命令.md'` ，file 对应文件名，点（.）表示所有文件  
提交暂存区的更改到本地仓库，并添加提交信息：  
`$ git commit -m "第一次提交文件啦"`  
将本地仓库中的修改推送到远程仓库：  
添加远程仓库的地址，其中 `<remote-url>` 是指远程仓库对应的地址，例如 `https://github.com/user/repo.git`  
`git remote add origin <remote-url> `  
(`git remote set-url origin <remote-url>`)  
将当前分支推送到远程仓库 ， `git push` 命令时，`-u` 参数可以将本地 Git 仓库的 master 分支与远程仓库的 master 分支关联起来，方便后续的推送和拉取操作。`origin` 表示使用之前添加的名为 origin 的远程仓库。  
`git push -u origin master(main)`  
强制将本地代码推送到远程服务器：  
`git push -f origin master(main)`
### 我的总结
3 步：add commit push

## 克隆仓库
在想要下载到的文件夹中，右键打开 git bash  
Git clone + 链接，链接通常以.git 结尾

## 删除远程仓库的文件
### 第一步，在自己的工作区打开 git bash，进入分支 First
git pull origin First \# 将 First 修改为自己的分支名
### 第二步，查看仓库文件
dir
### 第三步，删除指定文件或文件夹
git rm -r --cached file_name
### 第四步，commit 并添加说明
git commit -m "delete some files" \# 引号内的内容可以修改为自己的说明
### 第五步，push 到远程仓库
git push -u origin First \# 将 First 修改为自己的分支名
### 教程
[(25 条消息) 删除 Github 仓库中的指定的文件或文件夹 \_github 删除文件夹 \_From now on...的博客 -CSDN 博客](https://blog.csdn.net/qq_44786250/article/details/126786727)

## 修改 commit 的用户名和邮箱
### 代码
#### 第一步：
git filter-branch -f --env-filter '  
OLD_EMAIL=" 原来的邮箱 "  
CORRECT_NAME=" 现在的名字 "  
CORRECT_EMAIL=" 现在的邮箱 "  
if \[ "\$GIT_COMMITTER_EMAIL" = "\$OLD_EMAIL" \]  
then  
export GIT_COMMITTER_NAME="\$CORRECT_NAME"  
export GIT_COMMITTER_EMAIL="\$CORRECT_EMAIL"  
fi  
if \[ "\$GIT_AUTHOR_EMAIL" = "\$OLD_EMAIL" \]  
then  
export GIT_AUTHOR_NAME="\$CORRECT_NAME"  
export GIT_AUTHOR_EMAIL="\$CORRECT_EMAIL"  
fi  
' --tag-name-filter cat -- --branches --tags
#### 第二步：
git push origin --force --all
### 教程
[(32条消息) Git 修改历史 commits 中的用户名和邮箱_leemraz的博客-CSDN博客_git 修改 log 里面的邮箱](https://blog.csdn.net/Tmraz/article/details/120529166)

## 查看日志
Git log  
退出：q  
下一页：空格

## Cherry pick
图示  
比如此时分支情况如下：  
![image1](/img/user/resources/attachments/image1-7 3.png)  
这幅图中，每个圆圈代表一次 commit  
一条线是一个分支。  
比如 c2，c3，这是两次提交，在同一个分支上。  
此时需求是：要把绿色分支的 C3，蓝色分支的 C5，紫色分支的 C7 合到一条新的分支上。  
此时就需要 cherry-pick 命令了。  
首先切到 master 分支，然后输入  
git cherry-pick C3 C5 C7  
此时，分支图示就变成了：  
![image2](/img/user/resources/attachments/image2-5 3.png)  
这就是 cherry-pick 的作用

## 修改本地仓库的 url
比如我新改了一次用户名，本地有许多仓库的 url 就变了，此时应该怎么修改本地仓库的 url，是的本地和云端保持一致？
### 相关教程
[08-github仓库改名后本地仓库的操作\_Lin\_hahahaha的博客-CSDN博客](https://blog.csdn.net/Lin_hahahaha/article/details/120600570)

## 总结性教程
[git常用指令，你都会了吗\_哔哩哔哩\_bilibili](https://www.bilibili.com/video/BV1Q94y1r7xH/?buvid=XY630CE669F34078F341989B1EE06E60B0127&is_story_h5=false&mid=g8UDjEqHIS5oCexxb9oAEQ%3D%3D&p=1&plat_id=116&share_from=ugc&share_medium=android&share_plat=android&share_session_id=7b6c6a8d-9881-4c47-80f0-12b53f22fc32&share_source=COPY&share_tag=s_i&timestamp=1692892266&unique_k=3KK8XkR&up_id=1177197158&vd_source=20cb3e7c6ad3d64f0eb2d763ff005080)