---
aliases: []
created: 2022-11-03 17:55:04+08:00
date created: 2023-07-05T16:15:59+08:00
date modified: 2024-01-13T19:21:10+08:00
dg-publish: true
tags: []
title: Shopping demo coding diary
updated: 2022-11-11 17:38:19+08:00
---

## 20221103 下午
### 1.
pip install Django==2.1.12
### 2.
django-admin startproject django_study
### 3.
拖出来
### 4.
pip install psycopg2-binary==2.8.6
### 5.
Python manage.py runserver
### 6.
Settings.py 数据库改为以下内容  
DATABASES={  
'default': {  
'ENGINE': 'django.db.backends.postgresql_psycopg2',  
'NAME': 'postgres',  
'USER': 'postgres',  
'PASSWORD': '123654',  
'HOST': 'localhost',  
'PORT': 5432,  
}  
}
### 8.
python manage.py migrate
### 9.
Python manage.py createsuperuser
### 10.
python manage.py startapp apps
### 11.
创建 users、carts、goods、orders 四个 app 并注册  
'apps.users',  
'apps.goods',  
'apps.orders',  
'apps.carts',

## 20221104 上午
### 1.昨天的文件上传到 github
### 2.新建 utils
写 auth 即 token 校验方法和 basemodel
### 3.每个 app 的 model 中创建数据表
一个存 users；一个存 goods；建立一个中间表，由于一个用户对应一个购物车，因此不需要建立购物车表，同时用户与商品构成 m:n 的关系，因此建立中间表存储添加购物车这个过程，为 CartsGoods；用户与订单构成 1：n 关系，因此在订单中添加用户的外键，订单表为 Orders；订单与商品构成 m：n 关系，因此创建中间表储存下单的过程，为 OrdersGoods。共 5 个表。  
![image1](/img/user/resources/attachments/image1-66.png)
### 4.makemigrations、migrate，
期间出现问题，因为中途改了数据库，django 不允许在已有数据库中新增一个非空列，除非有默认值，因此设置 default=xxx。
### 5.写 admin 页面
在网站上各新增一条数据。注意建立数据库时候要指定表名，不然很可能 django 找不到表。
### 6.设置日志
settings 里面写日志
### 7.解决跨域 cors 和跨站
#### 1.安装
pip install django-cors-headers==3.3.0
#### 2.settings 里面，3 处设置，apps 里面
"corsheaders",#跨域设置
#### 3.middleware 里面，注意放置位置
MIDDLEWARE=\[  
"corsheaders.middleware.CorsMiddleware",#跨域设置  
'django.middleware.common.CommonMiddleware',\]
#### 4.加一行
CORS_ORINGINS_ALLOW_ALL=True#允许跨域
#### 5.注释一行（解决跨站）
\# 'django.middleware.csrf.CsrfViewMiddleware',
### 8.django rest framework
#### 1.安装
#### pip install djangorestframework==3.10.3
#### 2.Settings installed apps 加入
'rest_framework'
### 9.userinfo 接口
在 app 目录下，view.py 里面写 getuserinfo 接口，render 方法写入 html  
在 app 同级目录创建 templates 目录  
templates 目录下写 html 文档  
项目目录下，settings.py，templates 选项中，'DIRS':\[os.path.join(BASE_DIR,'templates')\],  
在项目目录下找到 urls.py，进入注册新的 url  
postman 进行测试
### 10.jwt 校验基础配置
#### 1.安装包
pip install PyJWT==1.7.1
#### 2.utls 中新建（之前完成了）
utils 中创建 auth.py，定义 JWT 检验的方法
#### 3.settings 加入下面的内容
REST_FRAMEWORK = { \#把 JWTtoken 校验注册  
'DEFAULT_AUTHENTICATION_CLASSES':(  
'apps.utils.auth.JWTAuthentication',  
),  
}
### 11.rap2 建好仓库
[RAP2 (bundleb2b.net)](https://rap2-api.bundleb2b.net/account/register)

## 20221104 下午
### 1.配置 redis
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
### 2.写注册接口
成功  
又改了一下数据库，user 表加了密码，别忘了设置 default
### 3.写登录接口
403forbidden  
![image2](/img/user/resources/attachments/image2-37.png)
### 
### 4.写改密码接口
还没写完

## 20221107 上午
### 1.登录接口
一共三种方法避免，我试了两种，依然报 403 错误。
### 放弃 rest framwork，用原生 django 再写一次。因为这个接口不需要 token 校验，因此并不一定要用 restframwork。问题得以避免，接口正常运行
### 2.改密码接口
两种方法，一种是 save，一种是 update，我用的 update，注意不要查一个人两次，不然要花双倍时间
### 3.查看商品接口
注意模糊查询位置，还没有写好所有参数
### 4.添加购物车接口
没写完

## 20221107 下午
### 1.添加购物车接口
注意添加外键的过程中，需要指定外键值为主表一个对象，而不为主表的主键。
### 2.编辑购物车接口
如果判断过程需要多次在其他表搜索，最好提前搜索完并将数据记录下来，每次判断储存下来的搜索结果即可。
### 3.下单接口
一次只能下一种物品，这样在 ordersgoods 表里是一行，方便操作。  
下单时要输入 orderid，如果不输入视为新建订单，需要输入地址和电话，否则视为修改订单。  
修改储存 order 的数据库结构，添加总价格、地址、电话三个参数。  
下单整体流程：
#### 0.如果没有此 order，新建一个 order
#### 1.更新 ordergoods 表
#### 2.更新 goods 表商品库存
#### 3.更新 order 表的总价格
### 4.查看订单接口
输出 order 表全部信息  
缓存的设置有一些问题

## 20221108 上午
### 1.更改下单接口
如果添加的下单数据已在 ordergoods 数据库中出现过，那应该仅更改物品数量，而不是新增一条。  
修改数据库后删除缓存
### 2.更改查看订单接口
增加缓存的设置，直接把序列化过后的 list 放入缓存，这样再次查询很方便。
### 3.更改查看商品接口
修改缓存的设置。
### 4.rap2 仓库写好所有接口
根据代码定义仓库即可
### 5.画 er 图
我的 navicat16 过期了，从之前的网盘找到了 navicat15。  
Navicat15 无法打开 postgressql15，能打开 postgres13。  
因此我只能把项目端口迁移到 5433，之后用 navicat 画 er 图。  
之后再迁移回 5432，数据库里数据还在。  
![image3](/img/user/resources/attachments/image3-24.png)

## 20221108 下午
### 1.更改添加购物车接口
如果之前购物车存在了该商品，此次添加应该在原有记录上增加数量， 而不是新增一条记录
### 2.新写一个可以接收多个物品，一步到位的下单接口
没写完

## 20221109 上午
### 1.新写一个可以接收多个物品，一步到位的下单接口
1.获取列表  
2.orders 新增一条订单  
3.遍历列表，ordersgoods 新增  
4.遍历过程中累计订单 totalprice  
5.遍历过程中不断更改 goods 库存  
6.遍历结束后，一次性写入订单 totalprice
### 2.Rap2 定义好新接口
根据新写的接口定义即可。  
修改之前 rap2 中的一些问题，有的接口 response 没有 code 和 message
### 3.附加题 1，实现用户注册后 bc 也有用户
实现了，但是没把两个接口写在一起，创建 bc 用户一个接口，在本地数据库创建用户一个接口。但是这两个接口的输入格式是一样的，写在一起很简单。  
创建 bc 用户的接口很简单，就是把用户的输入经过自己的 serilizer 校验后，用 requests 包转发到 bc 的 api 上，之后将 bc 返回的 respons 转化为 json 格式返还给用户。
### 4.附加题 2，实现创建订单后 bc 也有订单
没写完

## 20221109 下午
### 1.实现创建订单后 bc 也有订单
成功，但这个接口写的很水，保持了 bc 原有的输入格式，没有任何调整。也没有用序列化器校验输入是否合法。  
可以说他就是 BC 的接口，只是传进来的数据被我们拿到了。
### 2.rap2 完善附加题的两个接口
附加题 1 的接口很好写，因为没多少输入  
附加题 2 的接口内容太复杂了，因为没有任何调整，因此要根据文档的要求都打进去。  
后来发现 rap2 可以导入，直接把 json 实例粘贴进去，他会自己创建。

## 20221111 下午
### 1.order 的删除问题
user = models.ForeignKey(Users, related_name='user_orders', on_delete=models.SET_NULL, null=True)  
Make migrations  
migrate
### 2.ordergoods 的删除问题，商品删除了，订单也不能删除
good = models.ForeignKey(Goods, related_name='good_ordersGoods', on_delete=models.SET_NULL, null=True)  
Make migrations  
migrate
### 3.password 作为密文
From Django.contrib.auth.hashers import make_password,check_password  
Make password 每次密文都不一样，checkpassword（明文、密文）  
在前端进行加密后，进行传输，之后在后端进行解密比对。  
但是自己测试的时候，只能后端先加密再解密