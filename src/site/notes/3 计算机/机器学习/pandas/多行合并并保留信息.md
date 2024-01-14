---
aliases: []
created: 2021-08-22 11:18:49+08:00
date created: 2023-07-05T11:13:20+08:00
date modified: 2024-01-13T19:21:06+08:00
dg-publish: true
tags: []
title: 多行合并并保留信息
updated: 2021-09-12 09:57:59+08:00
---

daka = pd.read_excel(r"C:\Users\dbas4\PycharmProjects\xuegocloud\20210817 处理返校\output/昨天打卡记录评级.xlsx")  
print(' 读取完成 ')

daka\[' 学号 '\] = daka\[' 学号 '\].apply(str)  
daka\[' 风险等级 '\] = daka\[' 风险等级 '\].apply(str)  
daka\[' 原因 '\] = daka\[' 原因 '\].apply(str)  
\# daka.applymap(str)  
print(' 学号,风险等级和原因已转化为字符串 ')

def concat_func(x):  
return pd.Series({  
' 打卡汇总 ': '\|'.join(x\[' 风险等级 '\]),  
' 原因汇总 ': '\|'.join(x\[' 原因 '\])  
})

dakahuizong = daka.groupby(' 学号 ').apply(concat_func).reset_index()

dakahuizong.to_excel(r"C:\Users\dbas4\PycharmProjects\xuegocloud\20210817 处理返校\output/昨天打卡汇总数据.xlsx", index=False)  
dakahuizong.head()