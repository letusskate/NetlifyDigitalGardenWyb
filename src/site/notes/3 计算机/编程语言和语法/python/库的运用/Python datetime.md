---
aliases: []
created: 2023-03-17 10:15:43+08:00
date created: 2023-07-05T11:13:20+08:00
date modified: 2024-01-13T19:21:09+08:00
dg-publish: true
tags: []
title: Python datetime
updated: 2023-03-17 10:28:18+08:00
---

## 往后推 30 天
import datetime

now = datetime.datetime.now() \# 当前时间  
(补充一下, 如果想要去掉小数点的话)  
now = datetime.datetime.now().replace(microsecond=0) \# 当前时间

ago = now-datetime.timedelta(days=30) \# 当前时间往前推 30 天

later = now+datetime.timedelta(days=30) \# 当前时间往后推 30 天

(输出出来的 ago 和 later 都是 datetime 类型)  
转换 str 类型  
datetime.datetime.strftime(ago, "%Y-%m-%d %H:%M:%S")

## 将 Python datetime 转换为 rfc 2822
### 方法一 datetime+format_datetime
\>\>\> import datetime  
\>\>\> import email.utils  
\>\>\> dt = datetime.datetime.now()  
\>\>\> email.utils.format_datetime(dt)  
'Thu, 09 Mar 2017 10:50:00 -0000'
### 方法二 time+formatdate
#### 当前时间
\>\>\> from email.Utils import formatdate  
\>\>\> formatdate()  
'Tue, 10 Aug 2010 20:40:23 -0000'
#### 输入 time.time()
\>\>\> import time  
\>\>\> formatdate(time.time())  
'Tue, 10 Aug 2010 20:41:43 -0000'
### 方法三 datetime+formatdate
\>\>\> import datetime  
\>\>\> import time  
\>\>\> from email import utils  
\>\>\> nowdt = datetime.datetime.now()  
\>\>\> nowtuple = nowdt.timetuple()  
\>\>\> nowtimestamp = time.mktime(nowtuple)  
\>\>\> utils.formatdate(nowtimestamp)  
'Tue, 10 Aug 2010 20:43:53 -0000'  
解释：email.utils.formatdate 需要一个时间戳——即一个自纪元以来带有秒（及其小数）的浮点。一个 datetime 实例不会直接给你一个时间戳——但是，它可以用 timetuple 方法给你一个时间元组，当然 time.mktime 也可以用这样的元组来生成时间戳。