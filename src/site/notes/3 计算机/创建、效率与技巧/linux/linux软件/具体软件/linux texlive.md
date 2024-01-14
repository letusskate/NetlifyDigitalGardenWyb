---
aliases: []
date created: 2023-07-24T19:09:47+08:00
date modified: 2024-01-13T19:21:09+08:00
dg-publish: true
tags: []
title: linux texlive
---

## linux 下的 texlive 安装
### 官方文档
[Quick install - TeX Live - TeX Users Group](https://tug.org/texlive/quickinstall.html)
### 按照文档 unix 来即可
1. cd /tmp # working directory of your choice
2. wget [https://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz](https://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz) # or curl instead of wget
3. zcat < install-tl-unx.tar.gz | tar xf -
4. cd install-tl-*
5. perl ./install-tl --no-interaction # as root or with [writable destination](https://tug.org/texlive/quickinstall.html#running)
6. Finally, prepend /usr/local/texlive/YYYY/bin/PLATFORM to your PATH,  
    e.g., /usr/local/texlive/2023/bin/x86_64-linux