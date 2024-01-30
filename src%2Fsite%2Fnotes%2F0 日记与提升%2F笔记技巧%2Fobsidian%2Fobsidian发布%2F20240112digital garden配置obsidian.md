---
{"dg-publish":true,"permalink":"/0 日记与提升/笔记技巧/obsidian/obsidian发布/20240112digital garden配置obsidian/","title":"20240112digital garden配置obsidian"}
---


## 为什么要配置
为了增加写作的动力。  
[发布](../../发布.md)
## 配置过程
### 教程
[【Obsidian】人人都可以构建的 属于自己的独立网站 | Obsidian 发布、数字花园打造 | 渐进创作\_哔哩哔哩\_bilibili](https://www.bilibili.com/video/BV1HF411173m/?spm_id_from=333.1007.tianma.4-3-13.click&vd_source=20cb3e7c6ad3d64f0eb2d763ff005080)
### 官方网址和文档
[GitHub - oleeskild/obsidian-digital-garden](https://github.com/oleeskild/obsidian-digital-garden)  
[Digital Garden - Publish Obsidian Notes For Free](https://dg-docs.ole.dev/)
### 我的步骤
1.根据官方文档来  
2.digital garden 要翻墙  
3.配置好后要给需要发布的笔记加上标签  
4.配置 linter，实现 crtl+s 自动添加标签，同时解决了之前的要 crtl+s 两次的问题  
5.配置 obsidian 的 digitalgarden 设置，取消修改 url。配置命令行方便快速发布  
6.待做：通过脚本批量发布笔记。
### 数字花园网址
[netlifyDgHome](https://wyb-blog.netlify.app/)  
[DgHome](https://vercel-digital-garden-wyb.vercel.app/)  
[Digital Obsidian Garden | letusskate.github.io](https://letusskate.github.io/)
### 目前问题
笔记之间的链接被少识别了一层，文件之间的双链都无法跳转
## 管理部署的服务器
### netlify
#### 网址
[Team overview | letusskate | Netlify](https://app.netlify.com/teams/letusskate/overview)
#### 特性
1.一分钟只能部署一次，有效节约部署次数  
2.域名不好看（site configuration 可改）  
3.额度多？或者额度是按月算？  按月算，一个月 300 分钟，在 team overview 界面的 build 选项卡，选择 usage&insights 查看 build 时长情况。  
4.国内能访问
#### 配置
site configuration，Pretty URLs 关闭
#### 如何 push 多次只 build 一次，节省额度？
[Ignore builds | Netlify Docs](https://docs.netlify.com/configure-builds/ignore-builds/)
##### 思路：github action 触发 netlify 触发器
用 [github action](../../../../3%20计算机/创建、效率与技巧/编程工具/代码托管平台/github/github%20action.md) 检测最近的提交时间，如果超过 30 分钟，再触发触发器。只需要允许 ignore  
##### 1.配置 github netlify.toml
在 build 中加入 `ignore = "exit 0"`，也就是取消所有自动部署
##### 2.配置 netlify build hook
netlify 界面申请一个 hook 就行  
`https://api.netlify.com/build_hooks/65a77015df78f3742a8265b4`
##### 3. 配置 github action 脚本
目录在 github 项目的.github/workflow 下，脚本作用就是抓取仓库的最近两次提交，得到提交时间，查看时间的差值，如果大于 30min，就触发 build hook。
```
name: Check Push Time

on:
  push:
    branches:
      - main

jobs:
  check_push_time:
    runs-on: ubuntu-latest

    steps:
    - name: Get Last Two Commit Timestamps
      id: last_two_commits
      run: |
        COMMITS=$(curl -s -H "Authorization: Bearer ${{ secrets.ACTION_NETLIFYDIGITALGARDEN_30MIN_PER_BUILD }}" \
          "https://api.github.com/repos/${{ github.repository }}/commits?per_page=2")
        LATEST_COMMIT_TIME=$(echo "$COMMITS" | jq -r '.[0].commit.author.date' | xargs -I{} date -d {} +%s)
        PREVIOUS_COMMIT_TIME=$(echo "$COMMITS" | jq -r '.[1].commit.author.date' | xargs -I{} date -d {} +%s)
        # echo "::set-output name=latest_commit_timestamp::$LATEST_COMMIT_TIME"
        # echo "::set-output name=previous_commit_timestamp::$PREVIOUS_COMMIT_TIME"
        echo "latest_commit_timestamp=$LATEST_COMMIT_TIME" >> $GITHUB_OUTPUT
        echo "previous_commit_timestamp=$PREVIOUS_COMMIT_TIME" >> $GITHUB_OUTPUT

    - name: Check Push Time
      run: |
        LATEST_COMMIT_TIME=${{ steps.last_two_commits.outputs.latest_commit_timestamp }}
        PREVIOUS_COMMIT_TIME=${{ steps.last_two_commits.outputs.previous_commit_timestamp }}
        ELAPSED_TIME=$((LATEST_COMMIT_TIME - PREVIOUS_COMMIT_TIME))
        echo "Elapsed time since last commit: $ELAPSED_TIME seconds"
        if [ $ELAPSED_TIME -gt 1800 ]; then
          echo "Time elapsed is greater than 30 minutes. Performing action..."
          curl -X POST -d '{}' https://api.netlify.com/build_hooks/65a77015df78f3742a8265b4
        else
          echo "Time elapsed is within 30 minutes. Skipping action."
        fi
```
##### 没用的尝试
###### 官方 ignore 示例
[[Support Guide] How to use the ignore command - Support / Support Guides - Netlify Support Forums](https://answers.netlify.com/t/support-guide-how-to-use-the-ignore-command/37517)
###### 关闭自动部署，进行手动部署
之后通过 netlify 的链接 (build hook) 触发部署，访问一次链接部署一次
###### 在 netlify 层修改部署策略（无效）
想通过把上一次部署时间记录在服务器上实现，但 netlify 服务器不支持写入新文件。  
github 根目录 netlify.toml
```
[build]
  publish = "dist"
  command = "bash ./netlify-build-script.sh"
  ignore = 'bash -c "[[ "$(date -d "5 minutes ago" +%s)" -gt "$(cat last_build_timestamp.txt 2>/dev/null || echo 0)" ]] && exit 1 || exit 0"'
  

[[redirects]]
  from = "/api/*"
  to = "/.netlify/functions/:splat"
  status = 200

[[redirects]]
  from = "/*"
  to = "/404"
  status = 404
```
netlify-build-script.sh
```
#!/bin/bash

# 执行构建命令
npm install && npm run build

# 更新上一次构建的时间戳
echo $(date +%s) > dist/last_build_timestamp.txt
```

###  vercel 
vercel 每天部署限制 100 次，后面的提交会出错，此时我们等第二天再对仓库进行一次 push，他就会自动部署最新版本，自然也就包括对之前版本的修改了。  
总之，一旦部署出错，就等到有免费部署额度的时候重新提交一次
#### 网址
[digital-garden-wyb – Deployment Overview – Vercel](https://vercel.com/wangyubos-projects-007ecc20/digital-garden-wyb/5G4Sw6bj97Qg8hLdzCSgHmpQZMrc)
#### 如何多次 push 只部署一次，以节省额度？
##### 思路
目前没找到方法，这是 digitalgarden 在 obsidian 的插件应该做的事情，他应该将多篇笔记作为一次 commitpush 到 github，  
或者 digitalgarden 的 github 项目也可以做到这个事情，在设置部署的时候，设置相近的提交不部署，超过 10 分钟再部署。  
vercel 本身也可以干这个事情，接收到的时间相近的部署请求自动忽略
##### vercel 的 ignore 设置
[Login – Vercel](https://vercel.com/wangyubos-projects-007ecc20/digital-garden-wyb/settings/git)  
![](/img/user/resources/attachments/2024011420240112digital garden配置obsidian.png)
### github pages
1.进入 digital garden 主页 [GitHub - oleeskild/digitalgarden](https://github.com/oleeskild/digitalgarden)  
2.点击 use this template  
3.创建仓库的用户名为 `letusskate.github.io`  
[github pages](../../../../3%20计算机/创建、效率与技巧/编程工具/代码托管平台/github/github%20pages.md)