---
{"dg-publish":true,"permalink":"/0 日记与提升/笔记技巧/obsidian/obsidian发布/obsidian digital garden配置/","title":"obsidian digital garden配置"}
---


## 为什么要配置
为了增加写作的动力。  
[笔记的发布和分享](../../笔记的发布和分享.md)
## 配置过程
### 教程
[【Obsidian】人人都可以构建的 属于自己的独立网站 | Obsidian 发布、数字花园打造 | 渐进创作\_哔哩哔哩\_bilibili](https://www.bilibili.com/video/BV1HF411173m/?spm_id_from=333.1007.tianma.4-3-13.click&vd_source=20cb3e7c6ad3d64f0eb2d763ff005080)
### 官方网址和文档
[GitHub - oleeskild/obsidian-digital-garden](https://github.com/oleeskild/obsidian-digital-garden)  
[Digital Garden - Publish Obsidian Notes For Free](https://dg-docs.ole.dev/)
### 我的步骤
1.根据官方文档来（注意切换 vercel 成 netlify 或 github.io，要看这个页面：[Hosting alternatives](https://dg-docs.ole.dev/advanced/hosting-alternatives/)）  
2.digital garden 要翻墙  
3.配置好后要给需要发布的笔记加上标签  
4.配置 linter，实现 crtl+s 自动添加标签，同时解决了之前的要 crtl+s 两次的问题  
5.配置 obsidian 的 digitalgarden 设置，取消修改 url。配置 obsidian 的命令行方便快速发布  
6.待做：通过脚本批量发布笔记。
### 数字花园网址
我部署了三份  
[netlifyDgHome](https://wyb-blog.netlify.app/)  
[DgHome](https://vercel-digital-garden-wyb.vercel.app/)  
[Digital Obsidian Garden | letusskate.github.io](https://letusskate.github.io/)
### 目前问题
笔记之间的链接被少识别了一层，文件之间的双链都无法跳转
### 个人理解
digital garden 插件负责把 obsidian 里的内容推送到 github 中  
netlify、vercel 或 github pages，负责把 github 仓库的内容发布成可访问的网页

