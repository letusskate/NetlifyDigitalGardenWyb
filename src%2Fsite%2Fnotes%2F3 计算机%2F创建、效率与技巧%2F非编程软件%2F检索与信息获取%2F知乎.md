---
aliases: []
date created: 2024-01-05T12:19:32+08:00
date modified: 2024-01-13T19:21:07+08:00
dg-publish: true
tags: []
title: 知乎
---

## 批量取消关注的问题
[如何批量取消关注的问题？ - 知乎](https://www.zhihu.com/question/27922502/answer/964383258)
### 方法
[知乎 - 有问题，就会有答案](https://www.zhihu.com/question/following)  
控制台 -sources-watch- 添加下面的代码
### 代码
```
function unfollow_all(){ var remaining = $(".zg-unfollow").length; if (remaining > 0) { $(".zg-unfollow").first().trigger('click'); setTimeout(unfollow_all, 1000); window.scrollTo(0,document.body.scrollHeight); } } unfollow_all();
```