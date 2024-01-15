---
{"dg-publish":true,"permalink":"/3 计算机/编程语言和语法/python/库的运用/Python os/","title":"Python os"}
---


windows 下，如果文件名过长，os.path.exists 会返回 false，实际上文件夹可能存在。  
因此在创建文件夹的时候尽量保证文件夹名称短小，不包含中文和除了 -\_ 以外的符号。  
os 也可以通过..访问上一级文件夹，windows 资源管理器也可以这样操作