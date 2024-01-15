---
{"dg-publish":true,"permalink":"/3 计算机/编程语言和语法/python/基本语法/Python import其他文件的function/","title":"Python import其他文件的function"}
---


## 导入文件
python 可以引用同级的所有文件，如果是 django，当前目录是 manage.py。
### 导入上级文件
#### 方法一
如果想引用上级文件，要通过以下代码进入上一级文件夹  
import sys  
sys.path.append("..")
#### 方法二
通过 from ….package import xxx 的方式进行引用。  
一个点表示当前文件夹同级文件  
两个点表示上一级文件夹，以此类推。