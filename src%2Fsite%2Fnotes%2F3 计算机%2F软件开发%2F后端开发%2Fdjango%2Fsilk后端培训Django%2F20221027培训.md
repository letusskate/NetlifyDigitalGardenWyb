---
aliases: []
created: 2022-10-27 11:14:37+08:00
date created: 2023-07-05T16:15:59+08:00
date modified: 2024-01-13T19:21:09+08:00
dg-publish: true
tags: []
title: 20221027培训
updated: 2022-11-08 14:06:52+08:00
---

用的（test1）
## BC
### 跳转不同页面，新页面怎么知道信息的？
比如前台对于一个 quote 进行结账，结账页面怎么得到关于 quote 的信息？  
前端的浏览器缓存

### Bundleb2b 的前台、后台和结账三个模块怎么嵌入 bc 的？
前台通过 theme  
后台通过 app  
结账通过 bc 的自定义 checkout

## Pycharm 
Alt+enter 自动提示  
Crtl+ 左键 找到源

## Django
### 上次纠错
把 demo 目录拖出来到大目录中  
连接本地数据库而不是 Django 自带数据库
#### 从头来用 postgresql 的流程
1\.  
pip install Django==2.1.12  
2\.  
django-admin startproject django_study  
3\.  
拖出来  
4\.  
pip install psycopg2-binary==2.8.6  
5\.  
Python manage.py runserver  
6\.  
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
8\.  
python manage.py migrate  
9\.  
Python manage.py createsuperuser
#### 不用 postgre 的流程
1\.  
pip install Django==2.1.12  
2\.  
django-admin startproject django_study  
3\.  
拖出来  
4\.  
pip install psycopg2-binary==2.8.6  
5\.  
Python manage.py runserver  
6\.  
python manage.py migrate  
7\.  
Python manage.py createsuperuser

### 我遇到的问题与解决
![image1](/img/user/resources/attachments/image1-65.png)
### 
### 解决方法：原先 setting 里面关于数据库，name 选项是随便填的，我把它改成 postgres 就成功了，name 是数据库的名字，一个端口可以有很多个数据库（database），一个数据库有很多个表（table）。
### 
### 我的项目管理
Test1：第一次写的，名字和不一样、没脱出来、没连 postgre，跟着打了第二节课。  
demo：没连 postgre、拖出来了，名字一开始不一样，后来改的一样了。  
Demo1：没连 postgre、拖出来了、名字一样、后面 copy 过来了，可正常运行。  
Demo2：连 postgre、拖出来了、名字一样，暂时失败。  
Demo3：连 postgre、不脱出来、名字一样，暂时失败  
Demo4：没连 postgre、拖出来了、名字一样、后面自己来一遍，可正常运行  
Demo5：连 postgre，拖出来，降低数据库版本到 13，暂时失败  
Demo6：连 postgre，拖出来，降低数据库版本到 11，暂时失败  
Demo7：连 postgre，拖出来，用 pycharm 自带的 django 模板，提高 django 版本让 pip 管理，  
Demo8：连 postgre，拖出来，降低 python 版本至 3.6

### 学习一：关于项目管理
注册 app：python manage.py startapp apps  
之后将 app 中新建一个 users 文件夹，app 内所有文件和文件夹拖入 user 中。  
在 settings 中 installed apps 添加 apps.users

### 学习二：关于注册新的用户数据库
app 目录下创建 utils，设置 basemodel  
app 目录下的 models，引用 basemodel，设置 model  
users 下新建一个目录  
python manage.py makemigrations  
python manage.py migrate

### 学习三：关于 admin 界面设置
可设置显示的数据库  
可设置筛选、搜索

### 学习四：关于 userinfo 接口
在 app 目录下，view.py 里面写 getuserinfo 接口，render 方法写入 html  
在 app 同级目录创建 templates 目录  
templates 目录下写 html 文档  
项目目录下，settings.py，templates 选项中，'DIRS':\[os.path.join(BASE_DIR,'templates')\],  
在项目目录下找到 urls.py，进入注册新的 url  
（注意一定要有至少一条用户数据）

### 学习五：关于 get_users 接口
在 app 目录下，view.py 里面写 getusers 接口  
在项目目录下找到 urls.py，进入注册新的 url  
在项目目录下，settings 中，注释掉 \#'django.middleware.csrf.CsrfViewMiddleware',#注释之后即允许跨站访问（第四行）  
通过 postman 进行测试，get 请求直接写在 url 里，post 请求 json 文件写在 body 里

## Postman
### 干什么用的？
模拟前端调用后端的接口，测试接口的作用和效果  
如果用浏览器访问，就要在 url 中修改，甚至需要在控制台中进行访问添加访问的 body、header 等
### 怎么用？
新建链接、选择 get 还是 post、编辑 url、params、header、body  
发送链接，查看返回结果。
## 
## Navicate
### 干什么用的
链接数据库，实时查看数据库数据的变化  
如果用命令行访问，需要不断进行 select 语句的执行和修改，比较麻烦
### 怎么用？
新建连接，选择数据库并输入用户名和密码。