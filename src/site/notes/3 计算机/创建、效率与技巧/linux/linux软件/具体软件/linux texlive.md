---
{"dg-publish":true,"permalink":"/3 计算机/创建、效率与技巧/linux/linux软件/具体软件/linux texlive/","title":"linux texlive"}
---


## linux 下的 texlive 安装
### 官方文档
[Quick install - TeX Live - TeX Users Group](https://tug.org/texlive/quickinstall.html)
### 按照文档 unix 来即可
1. `cd /tmp # working directory of your choice`
2. `wget https://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz`
3. `zcat < install-tl-unx.tar.gz | tar xf -`
4. `cd install-tl-*`
5. `perl ./install-tl --no-interaction # as root or with writable destination`
6. Finally, prepend `/usr/local/texlive/YYYY/bin/PLATFORM` to your PATH,  
    e.g., `/usr/local/texlive/2023/bin/x86_64-linux`
### 参考
[linux 添加环境变量](../../linux操作与命令/权限相关命令.md#linux%20添加环境变量)