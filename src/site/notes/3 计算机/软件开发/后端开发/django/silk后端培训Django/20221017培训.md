---
aliases: []
created: 2022-10-19 17:17:52+08:00
date created: 2023-07-05T16:15:59+08:00
date modified: 2024-01-13T19:21:09+08:00
dg-publish: true
tags: []
title: 20221017培训
updated: 2022-11-11 09:29:45+08:00
---

## 常见状态码
220：  
3 开头：重定向  
1 开头：  
5 开头：都是服务端的问题  
401：请求要求用户的身份认证  
429：限流，请求频率太高了，达到服务器限制了  
101：切换协议，服务器根据客户端切换协议  
504：服务器超时  
404：not found  
204：no content 没返回内容，delete 操作时，用 204
## 
## SAS
sas：多租户的，同一套代码，同一个环境，满足不同客户的需求，完成 sas 产品，需要敏捷开发。  
（以前的开发方法是瀑布式开发，需要几个月）

## 敏捷开发
产品经理不会对需求进行仔细分析，工程师直接做，做一部分提交一部分给测试，先上线，同时产品经理对于已经上线的会更改。  
特性：测试驱动开发（先写测试用例）、cicd 持续集成持续部署、重构（不断调整）、聚焦合作代码共享、任务分级。  
devops，开发运维都是同样一批人，

## Rap2
rap2，兼容 moke.js 的语法（可以随机模拟出来一些数据，moke.random.image()，图片、地址、url、数字均可以），作用是模拟后端的接口，方便前端测试和后端开发。  
使用流程：  
1.新建仓库  
2.新建接口 get_users  
3.在接口中输入 token、请求参数、相应内容  
postman 可以用于写好的接口进行测试，rap2 用于模拟接口的输入输出，适用于没有写好接口的时候。

响应体结构：code：200、message：success、data 是一个 js 对象\[包括 list，pagination（分页，包括三个参数，offset：当前下标，limit：长度，totalcount：共有多少个）\]

[RAP2 (bundleb2b.net)](https://rap2-api.bundleb2b.net/account/register)  
淘宝也提供了 rap2 平台  
[RAP接口管理平台 (taobao.org)](http://rap2.taobao.org/)

## 作业
创建用户接口、获取用户列表