---
{"dg-publish":true,"permalink":"/3 计算机/机器学习/pandas/groupby的遍历/","title":"groupby的遍历"}
---


gb=df.groupby(**' 材料分类 '**)  
for group_name,group_df in gb: