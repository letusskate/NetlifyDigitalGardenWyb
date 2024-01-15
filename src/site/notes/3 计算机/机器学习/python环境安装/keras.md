---
{"dg-publish":true,"permalink":"/3 计算机/机器学习/python环境安装/keras/","title":"keras"}
---


## 报错
### Load .h5 文件的时候
AttributeError: 'str' object has no attribute 'decode'
### 解决方法
首先卸载原来的 h5py-3.1.0  
之后 pip install h5py==2.10.0（换源：pip3 install -i <https://pypi.tuna.tsinghua.edu.cn/simple> h5py==2.10.0）