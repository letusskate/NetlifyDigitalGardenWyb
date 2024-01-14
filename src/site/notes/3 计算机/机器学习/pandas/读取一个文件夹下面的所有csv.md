---
aliases: []
created: 2021-08-21 17:52:24+08:00
date created: 2023-07-05T11:13:20+08:00
date modified: 2024-01-13T19:21:06+08:00
dg-publish: true
tags: []
title: 读取一个文件夹下面的所有csv
updated: 2021-08-21 17:53:28+08:00
---

for root_dir,sub_dir,files in os.walk(r"network"):  
for file in files:  
if file.endswith(".csv"):  
\#构造绝对路径  
file_name = os.path.join(root_dir, file)  
\#读取 sheet 页  
df=pd.read_csv(file_name)  
csv_name=file.replace(".csv","")  
\#新增两列用于记录数据所属 excel 及 sheet 页，这一步骤感觉很有用，因为后续数据清理的时候，遇到莫名其妙的数据不知道怎么办的话，还可以去源 excel 表格上看下。  
df\["csv_name"\]=csv_name  
network=pd.concat(\[network,df\])