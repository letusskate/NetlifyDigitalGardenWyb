---
aliases: []
date created: 2024-01-12T09:44:48+08:00
date modified: 2024-01-13T19:21:09+08:00
dg-publish: true
tags: []
title: git备份仓库到另一个云端以及git仓库迁移
---

## 通过 gitee 的仓库镜像管理
[gitee仓库自动备份github](../../代码托管平台/gitee/gitee仓库自动备份github.md)
## 相关教程
[Git | 仓库迁移备份 | 保存提交记录 - 知乎](https://zhuanlan.zhihu.com/p/669280663)  
[Site Unreachable](https://www.cnblogs.com/securitybob/p/13927451.html)
## 常规做法

项目中遇到 git 仓库迁移，很常见。如何把一个项目中所有的分支，tag 等迁移到另一个仓库地址，需要执行一个特别的克隆命令，然后镜像 push 到新的仓库地址。具体步骤如下：  
1.打开命令行工具  
2.以 bare 的方式克隆老的仓库

```bash
git clone --bare https://github.com/exampleuser/old-repository.git
```

3.镜像 push 到新的仓库地址

```bash
cd old-repository.git
git push --mirror https://github.com/exampleuser/new-repository.git
```

4.在电脑中删掉老得仓库，把新的仓库重新拉下来

```bash
cd ..
rm -rf old-repository.git
```

### 推送现有文件

```mipsasm
git remote  rm  origin 
git remote add origin   git@xxx
git push -u origin --all
git push -u origin --tags
```