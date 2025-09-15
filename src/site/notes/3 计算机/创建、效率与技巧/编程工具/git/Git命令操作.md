---
{"dg-publish":true,"permalink":"/3 计算机/创建、效率与技巧/编程工具/git/Git命令操作/","title":"Git命令操作"}
---


## git 远端仓库改名了该怎么办
**查看当前远程仓库地址**‌：使用命令 `git remote -v` 查看当前远程仓库的地址。输出结果会显示当前的远程仓库名称和 URL，例如
```
origin https://github.com/your-username/old-name.git(fetch) 
origin https://github.com/your-username/old-name.git(push)
```
‌**更新远程仓库地址**‌：使用命令 `git remote set-url origin <new-url>` 来更新远程仓库地址，其中 `<new-url>` 是新的远程仓库 URL。例如，如果新的仓库地址是 `https://github.com/your-username/new-name.git`，则命令为 `git remote set-url origin https://github.com/your-username/new-name.git`

## 将当前更改提交到新分支
```
# 创建新分支（这一步不会丢失任何更改，如果不放心，可以备份一下）

git checkout -b new-branch

# 添加当前文件到暂存区

git add your-file-name

# 提交更改到新分支

git commit -m "Commit message"

# 将新分支推送到远程仓库

git push -u origin new-branch
```
## git 查看提交树
`git log --all --graph --decorate --oneline`  
`git log --graph --oneline`
## 同步仓库到两个云端
[git同步两个云端仓库](git进阶操作/git同步两个云端仓库.md)
## git 发布流程
记得养成一个良好 git 发布流程的习惯
```shell
# 分支合并发布流程：
git add .			# 将所有新增、修改或删除的文件添加到暂存区
git commit -m "版本发布" # 将暂存区的文件发版
git status 			# 查看是否还有文件没有发布上去
git checkout test	# 切换到要合并的分支
git pull			# 在test 分支上拉取最新代码，避免冲突
git merge dev   	# 在test 分支上合并 dev 分支上的代码
git push			# 上传test分支代码
```
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
### 多层次克隆
`git clone --recursive xxxxx`
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
### 具体用法
git checkout 要更改的分支  
git cherry-pick 《commit hash》
### 出冲突后
提示：解决所有冲突之后，用 "git add/rm <路径规格>" 标记它们，  
提示：然后执行 "git cherry-pick --continue"。您也可以执行  
提示："git cherry-pick --skip" 命令跳过这个提交。如果想要终止执行并回到  
提示：执行 "git cherry-pick" 之前的状态，执行 "git cherry-pick --abort"。

## 修改本地仓库的 url
比如我新改了一次用户名，本地有许多仓库的 url 就变了，此时应该怎么修改本地仓库的 url，是的本地和云端保持一致？
### 相关教程
[08-github仓库改名后本地仓库的操作\_Lin\_hahahaha的博客-CSDN博客](https://blog.csdn.net/Lin_hahahaha/article/details/120600570)
## 撤销 commit
如果您想取消本地的 commit，根据您的具体需求，有几种不同的方法可以实现：
1. **撤销最近一次提交**： 如果您只想撤销最近一次提交，并且这次提交没有被推送到远程仓库，您可以使用以下命令：  
    `git reset HEAD~1`  
    这个命令会将 HEAD 指针移动到上一次提交，撤销最后一次提交。请注意，这不会删除工作目录或暂存区中的更改，它们仍然会保留。
2. **撤销多次提交**： 如果您想撤销多次提交，可以使用 `git reset` 命令的 `--hard` 选项加上指定的提交哈希值。例如，撤销最近两次提交：  
    `git reset --hard HEAD~2`  
    请注意，`--hard` 选项会重写工作目录和暂存区，使其与指定的提交完全匹配。这意味着所有在这些提交之后的更改都会被删除。
3. **取消提交并删除更改**： 如果您想撤销提交并且也删除相关的更改，可以使用以下命令：  
    `git reset --hard <commit-hash>`  
    将 `<commit-hash>` 替换为您想要回到的提交的哈希值。这会将您的工作目录和暂存区重置到该提交时的状态，并且所有从那时起的更改都会被删除。
4. **如果已经推送到远程仓库**： 如果您已经将提交推送到远程仓库，并且想要撤销它们，您需要使用 `git push` 命令与 `--force` 选项。请注意，强制推送会重写远程仓库的历史，这可能会影响其他协作者的工作。在使用此选项之前，请确保与团队成员沟通一致。  
    `git reset --hard <commit-hash> git push --force`  
在使用这些命令时，请确保您了解它们的影响，尤其是在使用 `--hard` 选项时要格外小心，因为它会导致未跟踪的更改丢失。如果您不确定，请先备份您的工作目录或使用 `git stash` 保存您的更改。
### git 取消本地 commit（未推送远端详细版）
查看本地的 commit 历史：  
`git log`  
找到你想取消的 commit 的哈希值（通常是 commit ID 的前几个字符）。  
使用 `git reset` 命令取消 commit：  
`git reset --hard HEAD^`  
或者使用 commit 的哈希值：  
`git reset --hard <commit_hash>`  
这会将你的 HEAD 移动到指定的 commit 上，同时删除最新的 commit。`--hard` 选项表示强制更新工作目录，丢弃未提交的更改。  
强制推送到远端：  
`git push origin <branch_name> --force`  
注意：使用 `--force` 选项是因为你修改了本地的历史，需要强制推送。但请小心使用强制推送，因为它会覆盖远端的历史记录。确保你没有在本地修改重要的东西。  
请替换 `<branch_name>` 为你的分支名称，通常是 `master` 或 `main`。  
注意：强制推送可能会导致其他协作者的问题，因此在执行之前请确保其他人知晓，并确保你有足够的理由这样做。如果其他人已经基于你之前的提交进行了工作，最好的做法是与他们协调，以免造成代码丢失或冲突。
## 合并老版本到新版本
当希望合并一个老版本代码到新版本仓库的时候，gitmerge 和 gitrebase 均不起作用。如果 checkout 老版本 merge 新版本，又会直接变为新版本，不会触发冲突。此时只能逐个文件进行 checkout，之后在 vscode 中取消暂存，再看文件更改界面选择保留什么更改。(以下场景为 SRTest2 领先于 main，但希望把 main 中的内容合并到 SRTest 中)
1. **比较两个分支的差异**： 在合并之前，你可以使用 `git diff` 命令来比较两个分支的差异。这将帮助你了解哪些文件发生了变化。  
    `git diff SRTest2..main`  
    这将会列出所有在 main 分支上有更改，但在 SRTest2 分支上没有的文件。
2. **手动选择文件进行合并**： 根据 `git diff` 的输出结果，你可以决定哪些文件需要合并。对于这些文件，你可以手动编辑它们，将 main 分支上的更改合并到 SRTest2 分支的相应文件中。这可以通过文本编辑器或者 IDE 来完成。
3. **使用 `git checkout` 命令选择性地应用更改**： 对于你决定要保留的更改，你可以使用 `git checkout` 命令从 main 分支检出这些更改到你的 SRTest3 分支上。  
    `git checkout main -- <file-path>`  
    这个命令将会把 `<file-path>` 文件从 main 分支复制到当前分支（SRTest2），而不影响其他文件。
## 查看两个版本代码的差异
### 方法一
git diff  
此方法仅能在命令行，也就是 gitbash 中进行查看
### 方法二
git history 可以通过 vscode 进行可视化比较（[git history](../vscode/vscode扩展插件.md#git%20history)）
## 总结性教程
[git常用指令，你都会了吗\_哔哩哔哩\_bilibili](https://www.bilibili.com/video/BV1Q94y1r7xH/?buvid=XY630CE669F34078F341989B1EE06E60B0127&is_story_h5=false&mid=g8UDjEqHIS5oCexxb9oAEQ%3D%3D&p=1&plat_id=116&share_from=ugc&share_medium=android&share_plat=android&share_session_id=7b6c6a8d-9881-4c47-80f0-12b53f22fc32&share_source=COPY&share_tag=s_i&timestamp=1692892266&unique_k=3KK8XkR&up_id=1177197158&vd_source=20cb3e7c6ad3d64f0eb2d763ff005080)