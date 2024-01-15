---
{"dg-publish":true,"permalink":"/3 计算机/编程语言和语法/python/python环境配置/命令行找不到pip安装的功能/","title":"命令行找不到pip安装的功能"}
---


可以在命令行直接调用的 python 包中的功能，实际文件一般出现在 python/bin 里面，而不是出现在 site-package 里面。因此得出如下解决方法：
## 对于 linux 来说
>3：安装后使用 cocotb-config -v 还是找不到，可能需要做一个软链接 ln -sv xxx /usr/local/python3/bin/cocobt-config