---
aliases: []
created: 2022-10-31 13:46:58+08:00
date created: 2023-07-05T16:15:59+08:00
date modified: 2024-01-13T19:21:09+08:00
dg-publish: true
tags: []
title: 20221031培训
updated: 2022-11-08 14:05:36+08:00
---

用的（demo1）
## django 日志
### 日志的级别
All  
Debug  
Info  
Morning  
Error  
日志只能记录 等级大于等于自己的错误，比如一个日志为 Info，那他只能记录 info、morning 和 error 的信息
### 日志的设置
详见培训文件夹

## 计算机网络知识
### 关于端口
https：443 端口、http：80 端口
### 关于请求的结构
META 代表请求头 header、body 代表请求的 body、params 在 url 中体现  
postman 可以写访问的 body、meta，但是浏览器测试接口只能写 params  
authToken 一般在 header 中
### 关于前后端交互
前端页面访问后端 api，需要使用 ajax 请求

## 跨域问题
### 什么是跨域
跨域问题是浏览器产生的，不是服务器前端或后端的问题。  
比如在百度的页面上，通过 f12 的控制台通过 ajax 访问本地部署的接口，此时浏览器无法返回数据，就是因为跨域问题。
### 解决方式
前端代理，类似 vpn  
浏览器插件，test cros 等  
反向代理  
后端 cors 配置
### 后端 cors 配置
#### 1.安装
pip install django-cors-headers==3.3.0
#### 2.settings 里面，3 处设置，apps 里面
"corsheaders",#跨域设置
#### 3.middleware 里面，注意放置位置
MIDDLEWARE=\[  
"corsheaders.middleware.CorsMiddleware",#跨域设置  
'django.middleware.common.CommonMiddleware',\]
#### 4.
CORS_ORINGINS_ALLOW_ALL=True#允许跨域

## Django rest framework
### 这是什么
引入后不需要用 if else 判断是 get 还是 post，把浏览器直接访问的页面变得更好看，同时方便 jwt 校验
### 流程
#### 1.安装
#### pip install djangorestframework==3.10.3
#### 2.接口中像下面这样写
from rest_framework.views import APIView  
class UsersView(APIView):  
\# authentication_classes = ()  
def get(self,request):
#### 3.Settings installed apps 加入
'rest_framework'

## 身份认证
### 身份认证基本知识
不能让所有人都随便访问 api 接口，因此需要对于访问者身份进行校验，只有通过 token 校验的人才可以访问 api。  
token 一般在 header 里传输给后端。login 后加密邮箱形成 token，不要放密码、一定要有过期时间。  
这里我们采用 userlogin 对于用户登录时邮箱加密，生成 token 并把 token 给用户使用，之后在用户调用 api 的时候，对于用户提供的 token 进行解密，如果解密结果恰好是他的邮箱，那么 token 合法，他可以访问。
### 解决方式
#### 方法一 Cookies
浏览器缓存，最大 4M，被拦截后信息就丢了，因此不用 cookie
#### 方法二 Session
多张表查，可能会麻烦，因此不用 session
#### 方法三 Jwt
Json web token，以 json 数据格式为基础加密，形成 token，用来 web 校验，因此用 JWT
### JWT 流程
#### 1.安装包
pip install PyJWT==1.7.1
#### 2.utls 中新建
utils 中创建 auth.py，定义 JWT 检验的方法
#### 3.settings 加入下面的内容
REST_FRAMEWORK = { \#把 JWTtoken 校验注册  
'DEFAULT_AUTHENTICATION_CLASSES':(  
'apps.utils.auth.JWTAuthentication',  
),  
}
#### 4.如果需要排除接口的校验，比如登录接口，只有登录才能获得 token，因此在接口类下面加入下面的一行
authentication_classes = ()#不再 token 校验
#### 5.写 userlogin 文件
userlogin
#### 6.注册 url

## 序列化器
Serializer  
在 serializer 中定义序列化类，快速将传来的数据序列化，重复使用可以减少代码量。对于输入数据的校验，用序列化器管理，用 isvalid 判断，条例更加清晰
### 流程
#### 1.建立 serializer.py，与 views.py 同级
储存序列化方法
#### 2.修改 views.py 中的接口
减少代码量