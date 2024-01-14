---
aliases: []
created: 2022-12-06 16:09:36+08:00
date created: 2023-07-05T11:13:20+08:00
date modified: 2024-01-13T19:21:09+08:00
dg-publish: true
tags: []
title: python图片压缩
updated: 2023-01-11 09:30:41+08:00
---

## 引用库和定义函数
import os  
from PIL import Image  
from PIL import ImageFile  
\# 压缩图片文件  
def compress_image(outfile, mb=5, quality=85, k=0.9): \# 通常你只需要修改 mb 大小  
""" 不改变图片尺寸压缩到指定大小  
:param outfile: 压缩文件保存地址  
:param mb: 压缩目标，KB  
:param k: 每次调整的压缩比率  
:param quality: 初始压缩比率  
:return: 压缩文件地址，压缩文件大小  
"""  
o_size = os.path.getsize(outfile) // 1024 \# 函数返回为字节，除 1024 转为 kb（1kb = 1024 bit）  
print('before_size:{} after_size:{}'.format(o_size, mb))  
if o_size \<= mb:  
return outfile  
ImageFile.LOAD_TRUNCATED_IMAGES = True \# 防止图像被截断而报错  
while o_size \> mb:  
im = Image.open(outfile)  
x, y = im.size  
out = im.resize((int(x\*k), int(y\*k)), Image.ANTIALIAS) \# 最后一个参数设置可以提高图片转换后的质量  
try:  
out.save(outfile, quality=quality) \# quality 为保存的质量，从 1（最差）到 95（最好），此时为 85  
except Exception as e:  
print(e)  
break  
o_size = os.path.getsize(outfile) // 1024  
return outfile  
有时候我们可能不想破坏原图，那就需要复制原图，对复制后的图片进行压缩，outfile 即为副本路径。当然你也可以直接对原图压缩，outfile 即为原图路径。

## 压缩图片控制代码
\# 压缩单张图片  
outfile = r'C:\Users\Yesir\Downloads\1111.jpg' \# 单张图片地址  
compress_image(outfile)  
\# 批量压缩图片  
path = r'C:\Users\Yesir\Downloads\compress\\\\' \# 待压缩图片文件夹  
for img in os.listdir(path):  
compress_image(path + str(img))