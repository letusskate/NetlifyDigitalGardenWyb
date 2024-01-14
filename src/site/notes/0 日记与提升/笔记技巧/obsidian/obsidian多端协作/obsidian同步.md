---
aliases: []
date created: 2023-07-05T21:38:32+08:00
date modified: 2024-01-14T17:34:42+08:00
dg-publish: true
modified: 2023-07-05 00:48:23+08:00
tags: []
title: obsidian同步
---

## GIT
### 电脑端同步 gitee
#### 我的经验
##### 对于第一个本地库同步到云端
1.创建 ssh 公钥私钥 [ssh 公钥](../../../../3%20计算机/创建、效率与技巧/linux/SSH.md#ssh%20公钥)  
2.把本地仓库 push 到云端（云端新建库，git add， git commit，git push）  
3.安装 obsidian 插件（会自动识别.git 文件）
##### 对于后面的本地库同步到云端
1.创建 ssh 公钥私钥  
2.git clone 到本地  
3.安装 obsidian 插件
#### 网页教程
[Obsidian git备份手册 - 知乎 (zhihu.com)](https://zhuanlan.zhihu.com/p/595478125)  
[使用obsidian数据同步至Git，从而解决obsidian多端同步收费的问题-windows - 知乎 (zhihu.com)](https://zhuanlan.zhihu.com/p/619324664)  
[Obsidian 免费同步方案 - 知乎 (zhihu.com)](https://zhuanlan.zhihu.com/p/531516583)  
[【Obsidian】多端同步和备份方案_哔哩哔哩_bilibili](https://www.bilibili.com/video/BV1RF411K7aN/?spm_id_from=333.337.search-card.all.click&vd_source=20cb3e7c6ad3d64f0eb2d763ff005080)
#### gitignore 的编写
频繁修改的文件不能放上去，不然会导致 git 冲突
```
# /.obsidian
# /.trash
/.obsidian/workspace-mobile.json
/.obsidian/workspace.json
/.obsidian/plugins/key-promoter/data.json
/.obsidian/plugins/recent-files-obsidian/data.json

```
##### 其他人的写法
[求.gitignore 文件如何书写 - 疑问解答 - Obsidian 中文论坛](https://forum-zh.obsidian.md/t/topic/426)
##### 注意
编写完后要重新用命令行 commit  
[Git命令操作](../../../../3%20计算机/创建、效率与技巧/编程工具/git/Git命令操作.md#git冲突解决)

### Android 同步 GIT
#### 出现的问题
##### 无法用 ssh 同步
https://www.reddit.com/r/ObsidianMD/comments/xyeww9/obsidiangit_not_working_on_ipad/  
https://github.com/denolehov/obsidian-git/issues/459  
在 mgit 中改为通过 https 克隆，之后软件会提示要在设置中输入用户名和密码。https 克隆用的是用户名密码或用户名和私人令牌，ssh 克隆用的是密钥，如果用 ssh 克隆会报错。
##### android 提交后没反应
受限于手机短 ob git 插件的优化问题，bug 很多，应该在设置中补充提交 commit 的用户名和邮箱，要先 commit 再 push，否则直接 push 会导致 pull 也一起失效。  
android 端失效后，只能在 mgit 上 push，之后重新加载 obsidian。
#### 教程
##### 不用 ob git，手动同步
https://gist.github.com/Makeshift/43c7ecb3f1c28a623ea4386552712114
##### 用 android 其他软件代替手机端 ob（我的选择 [git journal](../../../../2%20生活与娱乐/生活琐事技巧/电器/手机/APP/git%20journal.md)）
https://sspai.com/post/65316  
https://github.com/GitJournal/GitJournal/releases/tag/v1.80.0  
https://gitjournal.io/contribute/
##### 用 ob git（失败）
Mgit、[termux](../../../../2%20生活与娱乐/生活琐事技巧/电器/手机/APP/termux.md)  
[基于Android的obsidian-git插件 - 经验分享 - Obsidian 中文论坛](https://forum-zh.obsidian.md/t/topic/17276/2)  
[obsidian通过gitee同步Android-Mgit - 知乎 (zhihu.com)](https://zhuanlan.zhihu.com/p/620225805)  
[如何在手机端实现Obsidian笔记云同步 | Obsidian实践 - 知乎 (zhihu.com)](https://zhuanlan.zhihu.com/p/575748439)  
https://sspai.com/post/68989
#### 软件下载
google 搜索即可，不然要去 google play 商店，华为上不去  
[下载Obsidian 1.4.6安卓版最新版本APK (apkpure.com)](https://m.apkpure.com/cn/obsidian/md.obsidian/download)  
[下载MGit 1.6.FINAL安卓版最新版本APK (apkpure.com)](https://m.apkpure.com/cn/mgit/com.manichord.mgit/download)  
[Obsidian针对于Android - 从Uptodown上下载APK](https://obsidian.cn.uptodown.com/android)  
https://f-droid.org/zh_Hans/packages/com.manichord.mgit/

## 云同步方法
### 坚果云 webdav
支持手机（syncfolder）、windows、linux
### 坚果云文件夹同步
支持 windows、linux
### onedrive
支持手机（syncfolder）、windows
### 百度网盘同步文件夹
支持 windows
### NAS
群晖