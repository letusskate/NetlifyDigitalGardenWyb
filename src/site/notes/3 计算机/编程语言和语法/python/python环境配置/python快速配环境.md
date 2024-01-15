---
{"dg-publish":true,"permalink":"/3 计算机/编程语言和语法/python/python环境配置/python快速配环境/","title":"python快速配环境"}
---


## Requirements.txt
### 生成
如果有一个环境装好了，可以在环境里面使用  
pip freeze \> requirements.txt  
自动生成这个 requirements.txt 文件，里面会包括你所安装的环境里面的依赖包和版本号
### 使用
之后如果创了一个新的虚拟环境，可以在虚拟环境中使用  
pip install -r requirements.txt  
去安装依赖 (不用一条一条 pip install 去装了)，这样环境就是一样的了
### 另一种借助第三方看库的生成和使用
pip install pipreqs  
在当前目录生成：  
pipreqs . --encoding=utf8 --force
### 其他使用
[requirements.txt你真的清楚吗 - 哔哩哔哩](https://www.bilibili.com/read/cv26464241/)