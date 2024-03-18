---
aliases: []
created: 2023-03-21 15:16:18+08:00
date created: 2023-07-05T11:13:20+08:00
date modified: 2024-01-13T19:21:09+08:00
dg-publish: true
tags: []
title: List
updated: 2023-04-16 12:24:59+08:00
---

## 实现集合相减
根据网络搜索结果，有两种方法可以实现列表之间的集合运算相减：
- [一种是使用set函数将列表转换成集合，然后用减号（-）表示差集，最后再用list函数将结果转换回列表。例如：list3 = list(set(list1) - set(list2))1](https://blog.csdn.net/weixin_42500374/article/details/112921237)[2](https://blog.csdn.net/weixin_39657094/article/details/111802971)。
- [另一种是使用列表推导式，遍历一个列表，并判断其元素是否在另一个列表中，如果不在，则保留该元素。例如：list3 = \[i for i in list1 if i not in list2\]1](https://blog.csdn.net/weixin_42500374/article/details/112921237)[2](https://blog.csdn.net/weixin_39657094/article/details/111802971)。  
[这两种方法的效率可能不同，在列表很大的时候，使用set函数可能更快1](https://blog.csdn.net/weixin_42500374/article/details/112921237)[2](https://blog.csdn.net/weixin_39657094/article/details/111802971)。

## list append
返回值是 None，因此不要把 append 返回值用于后续计算