---
aliases: []
created: 2022-02-19 19:49:55+08:00
date created: 2023-07-05T11:13:20+08:00
date modified: 2024-01-13T19:21:09+08:00
dg-publish: true
tags: []
title: 换源
updated: 2022-02-19 19:53:25+08:00
---

首先打开 cmd:  
输入  
pip config setglobal.index-url <https://pypi.tuna.tsinghua.edu.cn/simple>  
直接一步到位，不用费劲巴拉的创文件之类的。  
然后贴几个国内源：  
阿里云 <http://mirrors.aliyun.com/pypi/simple/>  
中国科技大学 <https://pypi.mirrors.ustc.edu.cn/simple/>  
豆瓣 (douban) <http://pypi.douban.com/simple/>  
清华大学 <https://pypi.tuna.tsinghua.edu.cn/simple/>  
中国科学技术大学 <http://pypi.mirrors.ustc.edu.cn/simple/>  
如果临时使用的话，可以采用  
pip install + 库名 -i+ 源

pip install numpy -i <http://mirrors.aliyun.com/pypi/simple/>