---
aliases: []
date created: 2023-08-04T18:41:10+08:00
date modified: 2024-01-14T17:35:03+08:00
dg-publish: true
tags: []
title: zotero多端同步
---

## Zotero+ 百度网盘同步空间
### 简单版
把 USERS 下的 zotero 文件夹移动到百度网盘同步空间中。  
在 zotero 首选项中设置储存文件夹，设置到百度网盘同步空间下的 zotero。  
（多端都需要这样设置）
### 复杂版
[Win10设置百度网盘自动同步Zotero的文献 - 知乎](https://zhuanlan.zhihu.com/p/562741839)  
把 zotero 首选项里面的 storage 文件夹放在百度网盘里面即可  
1、安装最新版的 Zotero 6.0  
2、在 Zotero 官网注册账号  
3、打开软件，打开编辑菜单栏下的首选项，在首选项的同步子菜单中登陆申请的账号和密码，并同步，此时的同步是在官网账号中同步，容量只有 300M。  
4、在 Zotero 主界面中建立新的分类，并把需要的文献直接拖拽到分类文件夹中，软件会同步更新，稍等片刻。  
5、此时文献会分别存储在本地和云端。本地在 C:\Users\Administrator\Zotero\storage 中。  
6、一般大家不喜欢把大量文献存储在 C 盘，可以在 Zotero 的首选项中修改本地端的存储目录，在高级子菜单中修改，此时文献 PDF 将同步到新的文件夹中。  
7、修改 Zotero 云端同步到百度网盘。首先需要打开百度网盘，必须是会员哦。点击左边的同步空间。  
8、在 win10 桌面上生成快捷图标，双击，将打开同步空间的本地储存位置，在根目录下建立 Zotero 文件夹。  
9、打开 cmd，输入 mklink /j “H:\BaiduSyncdisk\zotero\storage”“H:\Zotero\storage\storage”，实现 Zotero 的本地存储目录和百度网盘的存储目录的文件夹映射。  
![image1](/img/user/resources/attachments/image1-1 1.png)  
10、在百度网盘同步空间设置百度网盘的本地同步文件夹。  
11、奇迹出现，在百度网盘本地和云端都可以看到文献目录了。  
12、最后 Zotero 中取消文件同步到 Zoterod 云端，致此就实现了 Zotero 文献的百度网盘的云端同步。  

## zotero + 坚果云（启用）
百度网盘同步文件夹并不支持 linux，因此采用坚果云
### 文件夹同步
坚果云默认支持与本地文件夹保持一致  
1.本地新建文件夹  
2.把 zotero 文件放入新文件夹中  
3.坚果云客户端设置同步  
4.zotero 首选项 - 高级 - 文件和文件夹 - 设置为此文件夹
###  webdev 同步
手动点击小绿圈进行同步，设置后无需再开坚果云  
直接首选项 - 同步 - 文件同步 webdev 输入网址就行，之后点右上角小绿圈圈同步，无需任何其他操作。  
[07-简单3步搞定Zotero坚果云同步-WebDAV版\_哔哩哔哩\_bilibili](https://www.bilibili.com/video/BV1j8411V7fw/?spm_id_from=333.788&vd_source=20cb3e7c6ad3d64f0eb2d763ff005080)  
[Zotero 5.0 + 坚果云同步盘 + papership 配置教程\_papership 同步zotero\_alxe\_made的博客-CSDN博客](https://blog.csdn.net/alxe_made/article/details/105480762)  
[文献管理软件Zotero详细教程四（如何实现与坚果云的云同步）\_哔哩哔哩\_bilibili](https://www.bilibili.com/video/BV1cP411N766/?spm_id_from=333.337.search-card.all.click&vd_source=20cb3e7c6ad3d64f0eb2d763ff005080)
#### 坚果云 webdev 帐号
https://dav.jianguoyun.com/dav/  
157707905@qq.com  
a46p949jgjccc6bp

## zotero 手机端
[苹果和安卓移动平台上的Zotero app推荐 - 知乎](https://zhuanlan.zhihu.com/p/103503064)  
[GitHub - mickstar/Zoo-For-Zotero: This is an Android app for viewing Zotero libraries.](https://github.com/mickstar/Zoo-For-Zotero)

## linux zotero
### zotero 在 linux 的安装
[installation [Zotero Documentation]](https://www.zotero.org/support/installation)