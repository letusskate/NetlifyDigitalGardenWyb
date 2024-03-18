---
aliases: []
created: 2023-01-10 17:57:46+08:00
date created: 2023-07-05T16:15:59+08:00
date modified: 2024-01-13T19:21:09+08:00
dg-publish: true
tags: []
title: Django报错与改正
updated: 2023-01-10 17:58:19+08:00
---

## No migrations to apply 
当我们创建数据库，然后进行数据迁移时，发现表错误，我们删除了数据库中的表，同时又删除了 migrations 中的迁移文件，这时候我们进行迁移会报错：No migrations to apply：  
先执行 python manage.py makemigrations 信息如下：  
![image1](/img/user/resources/attachments/image1-63.png)  
再执行 python manage.py migrate 就会报错：  
![image2](/img/user/resources/attachments/image2-35.png)  
其实当我们迁移文件时，一共会生成三方文件，迁移文件、数据库中的表以及迁移信息的记录  
这里我以 sqlite 数据库举例，打开数据库，找到如下表中的 django_migrations 表：  
![image3](/img/user/resources/attachments/image3-22.png)  
打开会看到：  
![image4](/img/user/resources/attachments/image4-16.png)

我们生成了一条 迁移的记录，所以数据库会以为我们已经迁移完成，不会在进行迁移操作。  
所以我们只需要删除这条记录即可：  
![image5](/img/user/resources/attachments/image5-12.png)  
再次执行 python manage.py migrate  
这时，我们就会迁移成功了。  
记住：迁移文件、数据库中的表以及迁移信息的记录这三方删除的时候缺一不可，缺少任何一方都会报错。
## static 文件夹设置静态路径查找不到
是项目本身就规定了不能访问，罗哥说 nginx 映射之后就好了，部署之后确实好了。其他文件夹如 media 都能正常访问。  
[django访问本地static 解决django无法访问本地static文件(js,css,img)网页里js,cs都加载不了(IT技术) (qb5200.com)](http://www.qb5200.com/article/382038.html)  
1.今天网上下载一个博客项目，发现本地访问,js,css 加载不了.  
我想应该是项目上线的安全措施,但是我想调试项目.找到方法如下  
在 settings.py 里面编辑  
添加  
STATICFILES_DIRS = (  
os.path.join(BASE_DIR, 'static'),  
)  
另外把  
STATIC_ROOT = os.path.join(BASE_DIR, 'static')  
改为  
STATIC_ROOT = os.path.join(BASE_DIR, 'static1')  
即这里面的 static 不能和上面的一样,换个名字.
## 主键自增与 created_at 冲突问题
一旦我定义 model 的时候自主设置了主键，那么新增数据时就会失败，因为 basemodel 有一句判定，if self.pk，如果是自己设置的主键而非自增的 id，这句话会被判定为 false，此时识别为更新，而非新增，created_at 不会被创建，因此出现错误。  
[Django：“ created_at”列中的空值违反了非空约束 \| 码农家园 (codenong.com)](https://www.codenong.com/49137484/)  
[\#17654 (auto_now_add=True column creates IntegrityError if model is saved by specifying an id) – Django (djangoproject.com)](https://code.djangoproject.com/ticket/17654)
## 解决跨站访问问题
1.把 Django 项目中 settings.py 中 MIDDLEWARE 中的 'django.middleware.csrf.CsrfViewMiddleware' 注释掉就行  
2.在测试 Django 的时候发现一个问题，就是按照一般教程设置好 URL 的 mapping 之后，使用 get 请求总能得到正确的回应，但是在使用 post 请求时，却根本无法得到请求，会显示 403forbidden。根据提示（CSRF cookie not set）上网搜索了一下，发现只要在接收 post 请求的函数前加上 csrf_exempt 装饰器就可以了：  
@csrf_exempt  
def index(request):  
if request.method == 'POST':  
body = json.loads(request.body)  
print body\['value'\]  
return HttpResponse(request.body)  
3.在 form 表单中加入{% csrf_token %}  
\<form\>  
{% csrf_token %}  
\<anything_else\>  
\</form\>  
4.还是不行， 接口涉及到了 password 传输，发现取消 django rest framework 后，即可成功  
5.发现一个完美方法，在注册 url 的时候进行屏蔽  
from django.views.decorators.csrf import csrf_exempt  
urlpatterns = \[  
path('\<cart_id\>/upload-photo', csrf_exempt(UploadView.as_view())),  
path('delete-photo',csrf_exempt(DeletePhotoView.as_view())),  
\]