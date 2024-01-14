---
aliases: []
created: 2023-02-13 09:39:50+08:00
date created: 2023-07-05T11:13:20+08:00
date modified: 2024-01-13T19:21:09+08:00
dg-publish: true
tags: []
title: python写入文件
updated: 2023-04-06 16:54:05+08:00
---

python 写入文件  
2023 年 2 月 13 日  
9:39

## 写入 csv 出现多余空行
### 问题描述
Python 中的 csv 的 writer，打开文件的时候，要小心，  
要通过 binary 模式去打开，即带 b 的，比如 wb，ab+ 等  
而不能通过文本模式，即不带 b 的方式，w,w+,a+ 等，否则，会导致使用 writerow 写内容到 csv 中时，产生对于的 CR，导致多余的空行。
### 解决方式
#### open 中，加上 newline = ''
f = open(str(base_dir) + str(uri), 'w', encoding='utf-8', newline='')  
\# 2. 基于文件对象构建 csv 写入对象  
\# 3. 构建列表头  
csv_write = csv.DictWriter(f, fieldnames=fieldnames)  
csv_write.writeheader()  
for row in rows:  
csv_write.writerow(row)  
\# 4. 写入 csv 文件内容  
\# 5. 关闭文件  
f.close()

## csv 转 excel
### Openpyxl
def csv_to_excel(self,csv_url,excel_url,encode='utf-8'):  
""" 将 csv 转为 excel（.xlsx 格式）  
如果不需要可以把计时相关代码删除  
Args:  
sourcePath:str 来源文件路径  
savePath:str 保存文件路径，需要包含保存的文件名，文件名需要是 xlsx 格式的  
encode='utf-8' 默认编码，可以改为需要的编码如 gbk  
"""  
import csv  
try:  
print('csv to excel %s' % csv_url)  
curr_time = datetime.datetime.now()  
print(curr_time)

f = csv.reader(open(csv_url,encoding='utf-8'))

\# 创建一个 workbook 设置编码  
workbook = Workbook()  
\# 创建一个 worksheet  
worksheet = workbook.active  
workbook.title = 'sheet'

for line in f:  
worksheet.append(line)  
workbook.save(excel_url)  
print('csv to excel success')  
curr_time2 = datetime.datetime.now()  
print(curr_time2 - curr_time)  
\# import time  
\# time.sleep(5)  
except Exception as ex:  
print(f"csv to excel error, ex:{ex}")
### Pandas
网上搜一下一堆  
很短

## csv 读取第一行为列名的文件
decoded_file=file.read().decode('utf-8').splitlines()  
reader=csv.DictReader(decoded_file)  
For row in reader:  
print(row)  
此时每一个 row 都是一个字典

## 二进制打开和文本打开的区别
在 UNIX/Linux 平台中，用文本方式或二进制方式打开文件没有任何区别。

在 UNIX/Linux 平台中，文本文件以\n（ASCII 码为 0x0a）作为换行符号；而在 Windows 平台中，文本文件以连在一起的\r\n（\r 的 ASCII 码是 0x0d）作为换行符号。

在 Windows 平台中，如果以文本方式打开文件，当读取文件时，系统会将文件中所有的\r\n 转换成一个字符\n，如果文件中有连续的两个字节是 0x0d0a，则系统会丢弃前面的 0x0d 这个字节，只读入 0x0a。当写入文件时，系统会将\n 转换成\r\n 写入。

也就是说，如果要写入的内容中有字节为 0x0a，则在写人该字节前，系统会自动先写入一个 0x0d。因此，如果用文本方式打开二进制文件进行读写，读写的内容就可能和文件的内容有出入。

因此，用二进制方式打开文件总是最保险的。

## python 写入 txt
### Mode
a+ 打开并追加  
ab 二进制格式打开并追加