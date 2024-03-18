---
aliases: []
created: 2022-10-24 13:45:50+08:00
date created: 2023-07-05T16:15:59+08:00
date modified: 2024-01-13T19:21:09+08:00
dg-publish: true
tags: []
title: 20221024培训
updated: 2023-03-29 15:50:25+08:00
---

## Bundle b2b
### Bundle b2b adressbook
setting 中先开启 checkout  
之后在 general 中开启 adressbook
### Bundle b2b 公司成员区别
junior 不能下单  
senior 和 admin 可以审核订单
### Bundleb2b 报价单
#### 简介
卖家发报价单给买家，双方对于价格进行协商
#### 设置
![image1](/img/user/resources/attachments/image1-64.png)
#### 简单实操
1.买家发起 qoute  
卖家后台 budleb2b 可以修改价格  
买家再确认下单付钱  
2.卖家发起 qoute  
买家确认下单付钱
#### 付钱默认账户
![image2](/img/user/resources/attachments/image2-36.png)
### 发票 Invoice
管理系统开启 invoice 后有这个选项（管理系统非店家的后台，而是整个系统的管理员）  
对于交易可以开具发票
### Bundleb2b 组成
前台、后台、结账

## Django
### 创建 pycharm 虚拟环境
![image3](/img/user/resources/attachments/image3-23.png)

### terminal 输入代码（安装环境、创建用户等）
pip install Django==2.1.12  
django-admin startproject test1  
pip install psycopg2-binary==2.8.6  
python test1/manage.py runserver  
pip install django-simpleui  
python test1/manage.py migrate（迁移升级表）  
python test1/manage.py createsuperuser（建账号）

### 设置 setting 文件
![image4](/img/user/resources/attachments/image4-17.png)

![image5](/img/user/resources/attachments/image5-3 1.jpg)

### 配置 run（方便运行）
![image6](/img/user/resources/attachments/image6-12.png)

### 碰到的一个问题与解决
创建虚拟环境后，还没有操作就直接报错：  
无法加载文件 C:\Users\Kearney\\.virtualenvs\fb-xzc3iOtr\Scripts\Activate.ps1，因为在此系统上禁止运行脚本。有关详细信息，请参阅 https:/go.microsoft.com/fwlink/?LinkID=135170 中的 about_Execution_Policies。  
**  
解决方法：  
Set-ExecutionPolicy -Scope CurrentUser RemoteSigned  
*来自 \<<https://zhuanlan.zhihu.com/p/484073745>\>*  
![image7](/img/user/resources/attachments/image7-8.png)