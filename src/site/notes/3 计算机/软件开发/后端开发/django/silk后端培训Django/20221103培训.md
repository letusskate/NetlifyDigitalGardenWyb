---
aliases: []
created: 2022-11-03 13:39:31+08:00
date created: 2023-07-05T16:15:59+08:00
date modified: 2024-01-13T19:21:09+08:00
dg-publish: true
tags: []
title: 20221103培训
updated: 2022-12-08 09:44:34+08:00
---

用的（demo1）
## 缓存
### redis 与一般数据库区别
redis 是一个非关系型数据库，是一个内存型的数据库，数据放在内存里面，服务器重启就没有了，运行很快，通常把这种数据库称为缓存；postgres 是关系型数据库，是硬盘型数据库。
### 声明式与编程式缓存
声明式缓存，安全性差，在接口前面用装饰器声明缓存  
编程式缓存，效果好，在接口内部选择哪里写入缓存哪里清楚缓存
### 缓存使用方法
旁路缓存模式：先更新数据库、再删除缓存。也就是只有查找的时候生成缓存。这种方法如果并发过多，仍然不可靠。  
读写穿透模式：先更新缓存，由缓存更新数据库。太贵了，用的少。  
异步写入模式：先更新缓存，通过异步方式更新数据库，适用于对一致性要求不高，对并发量要求高的。
### 使用方法
#### 1.安装包
pip install django-redis==4.10.0
#### 2.设置 setting
CACHES = {  
"default":{  
"BACKEND":"django_redis.cache.RedisCache",  
"LOCATION":"redis://:@localhost:6379/0",#最后的反斜杠 0 代表第几个数据库，redis 默认有 16 个数据库  
"OPTIONS":{  
"CLIENT_CLASS":"django_redis.client.DefaultClient",  
}  
},  
"session": {  
"BACKEND": "django_redis.cache.RedisCache",  
"LOCATION": "redis://:@localhost:6379/1", \# 最后的反斜杠 0 代表第几个数据库，redis 默认有 16 个数据库  
"OPTIONS": {  
"CLIENT_CLASS": "django_redis.client.DefaultClient",  
}  
}  
}
#### 3.把建立缓存和删除缓存写进代码中

## django 关联数据库相关
### 什么是关联数据库
通过外键进行关联。注意查询时的 1+n 问题，1 条查询指令导致数据库进行了 n 次查询
### 操作流程
#### 1.models 中新建数据库
user = models.ForeignKey(Users, related_name='user_articles', on_delete=models.CASCADE)  
\#外键，把 user 这一列和另外一张表连接，一般为一对多，foreighkey 在那个表，哪个表就是多。ondelete 表示如果原表被删除了，这个有外键的表怎么办，cascade 叫级联删除直接删除此表中的所有数据，set_null 表示设置为空，SET_DEFAULT() 表示设置为一个默认值。
#### 2.迁移数据库
Python manage.py makemigrations  
Python lmanage.py migrate
#### 3.写入几个数据
在 admin 中注册这个新数据库，之后在 admin 中添加几个数据
#### 4.新建接口输入 userid，查询 user 的文章
这个接口要注意查询方式，  
user = Users.objects.filter(pk=user_id).first()  
if not user.exists():  
return Response({"code":"404","message":"user not exist"})  
articles = Article.objects.filter(user=user)  
\# articles = user.user_articles.all()#反查，可以从 user 表查到 article  
\# articles = Article.objects.filter(user\_\_id=user_id)#filter 里面也可以这样写 user\_\_in=user_id，这时候前面的三行就不需要了,但是容易被注入
#### 5.新建接口是查询所有文章
这个接口要注意 1+n 问题，  
\# articles = Article.objects.all()#出现 1+n 查询  
articles = Article.objects.all().prefetch_related('user').only('title','user')#解决 1+n 问题
#### 6.urls 中注册这两个接口

## 使用 BIgCommerce 的 API
用下面的网站查看 api 的用法 [Catalog Overview \| BigCommerce Dev Center](https://developer.bigcommerce.com/docs/ZG9jOjIyMDU5Ng-catalog-overview#catalog-overview)  
使用下面的网站查看 api 的调用 [Create Customers \| BigCommerce Dev Center](https://developer.bigcommerce.com/api-reference/1cea64e1d698e-create-customers)
### 使用流程
#### 1.写接口
#### 2.urls 注册

## 数据库设计工具
mysql workbench、processon  
powerdesigner