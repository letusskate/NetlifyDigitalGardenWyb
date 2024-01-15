---
{"dg-publish":true,"permalink":"/0 日记与提升/笔记技巧/obsidian/obsidian发布/20240112digital garden配置obsidian/","title":"20240112digital garden配置obsidian"}
---


## 为什么要配置
为了增加写作的动力。
[发布](../../发布.md)
## 配置过程
### 教程
[【Obsidian】人人都可以构建的 属于自己的独立网站 | Obsidian 发布、数字花园打造 | 渐进创作\_哔哩哔哩\_bilibili](https://www.bilibili.com/video/BV1HF411173m/?spm_id_from=333.1007.tianma.4-3-13.click&vd_source=20cb3e7c6ad3d64f0eb2d763ff005080)
### 我的步骤
1.根据官方文档来  
2.digital garden 要翻墙  
3.配置好后要给需要发布的笔记加上标签  
4.配置 linter，实现 crtl+s 自动添加标签，同时解决了之前的要 crtl+s 两次的问题  
5.配置 obsidian 的 digitalgarden 设置，取消修改 url。配置命令行方便快速发布  
6.待做：通过脚本批量发布笔记。
### 数字花园网址
#### vercel
[WybDigitalGarden](https://digital-garden-wyb.vercel.app/)  
#### netlify
[Nothing here](https://unrivaled-kashata-4a2ced.netlify.app/)
## 管理部署的服务器
###  vercel 
vercel 每天部署的资源有限制，后面的提交会出错，此时我们等第二天再对仓库进行一次 push，他就会自动部署最新版本，自然也就包括对之前版本的修改了。  
总之，一旦部署出错，就等到有免费部署额度的时候重新提交一次
#### 网址
[digital-garden-wyb – Deployment Overview – Vercel](https://vercel.com/wangyubos-projects-007ecc20/digital-garden-wyb/5G4Sw6bj97Qg8hLdzCSgHmpQZMrc)
#### 如何多次 push 只部署一次，以节省额度？
目前没找到方法，这是 digitalgarden 在 obsidian 的插件应该做的事情，他应该将多篇笔记作为一次 commitpush 到 github，  
或者 digitalgarden 的 github 项目也可以做到这个事情，在设置部署的时候，设置相近的提交不部署，超过 10 分钟再部署。  
vercel 本身也可以干这个事情，接收到的时间相近的部署请求自动忽略
##### vercel 的 ignore 设置
[Login – Vercel](https://vercel.com/wangyubos-projects-007ecc20/digital-garden-wyb/settings/git)  
![](/img/user/resources/attachments/2024011420240112digital garden配置obsidian.png)
### netlify
#### 网址
[Site overview | unrivaled-kashata-4a2ced | Netlify](https://app.netlify.com/sites/unrivaled-kashata-4a2ced/overview)
#### 特性
1.一分钟只能部署一次，有效节约部署次数  
2.域名不好看  
3.额度多？或者额度是按月算？  
4.国内能访问
#### 配置
site configuration，Pretty URLs 关闭