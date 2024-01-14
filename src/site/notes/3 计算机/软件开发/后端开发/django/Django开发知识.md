---
aliases: []
created: 2022-11-05 00:10:21+08:00
date created: 2023-07-05T16:15:59+08:00
date modified: 2024-01-13T19:21:09+08:00
dg-publish: true
tags: []
title: Django开发知识
updated: 2023-04-06 17:16:49+08:00
---

Django 开发知识  
2022 年 11 月 5 日  
0:10
## Django admin 后台与权限管理
### 简介
Group 可以给 user 分组。  
每个 group 可以有不同的权限，group 内所有用户都会获得这个权限  
一个 user 可以有多个 group。
### 查看某 group 的用户
#### 方法一
Group=Group.objects.get(name='blogger')  
Users=group.user_set.all()
#### 方法二
User.objects.filter(groups\_\_name='blogger')
### 查看 user 的 group
#### 查看用户是否在某个组
if django_user.groups.filter(name = groupname).exists():
### 如何在继承 admin.ModelAdmin 后，获取 user 对象
#### 方法一
class Post(admin.ModelAdmin):  
def save_model(self, request, obj, form, change):  
obj.user = request.user  
super(Post, self).save_model(request, obj, form, change)
#### 方法二
class PostAdmin(models.ModelAdmin):  
\# ...  
def display_confirm_button(self, obj):  
\# some code  
\# ...  
要访问登录用户,您需要访问请求对象.display_confirm_button 由于您只能访问 obj 正在编辑的对象,因此无法在您的方法中访问请求.

解决方案是覆盖 get_list_display,它可以访问 request 对象.然后,您可以 display_confirm_button 在其中有权访问请求的内部 get_list_display,并 display_confirm_button 在您返回的列表中包含 callable.

class MyModelAdmin(admin.ModelAdmin):  
def get_list_display(self, request):

def display_confirm_button(obj):  
out = logic_that_requires_user(request.user)  
return out

return \['field1', 'field2', display_confirm_button, ...\]
#### 方法二网址
[如何在Django Admin中获取自定义方法的当前用户？ \| (1r1g.com)](https://qa.1r1g.com/sf/ask/2473551881/)
#### 方法二示例代码
def get_fields(self, request, obj=None):  
def cart_pictures(obj):  
if request.user.groups.filter(name="ThailandGroup").exists()==False and request.user.is_superuser==False:  
return format_html('\<span\>Permission denied\</span\>')  
obj_pictures = pictures.objects.filter(cartsid=str(obj.checkout_id))  
pictures_path = \[\]  
for pic in obj_pictures:  
url = settings.APP_URL+'/static'+pic.photo.url  
pictures_path.append(url)  
if pictures_path == \[\]:  
return format_html(  
'\<span\>\</span\>'  
)  
else:  
html_str='\<div style="width: 100%;height: 200px;display: flex;"\>'  
for pic_path in pictures_path:  
html_str+=f'\<div style="width: 100%;flex: 1;margin: 10px;overflow: hidden;"\>' \\  
f'\<a href={pic_path}\>\<img src={pic_path} alt="error" ' \\  
f'style="width: 100%;height: 100%;object-fit:cover;"\>\</a\>\</div\>'  
html_str+="\</div\>"  
return format_html(html_str)  
cart_pictures.short_description = 'cart_pictures'  
return \['creationTime','lastUpdateTime',"store_hash","order_sn","bc_order_id","customer_id","merchant_id",  
"currency","total_inc_tax","transaction_reference_number","payment_count","payment_method",  
"checkout_id","is_captured", "has_captured", "gmt_captured", "status", "sync_flag", "offline",  
"remark", "is_cancel", "extra_data", cart_pictures\]
### 如何自定义 field 并显示自定义内容
#### 步骤一
在 field 的列表里添加一个不在数据库里的值
#### 步骤二
以这个值为名称，创建一个函数
#### 步骤三
写函数，返回值为显示在网页的 html 代码，函数应该有一个参数 obj，表示其他数据库中存在的这一条数据，obj 包含多个键和值。
#### 示例代码
def merchant_id_name(self, obj):  
global distributors_hash_map  
merchant_name = ''  
distributor = distributors_hash_map.get(str(obj.merchant_id), {})  
if any(distributors) is not False:  
merchant_name = distributor.get('merchant_name','')  
return format_html(  
'\<span\>{}\</span\>\<b\>({})\</b\>',  
obj.merchant_id,  
merchant_name  
)  
merchant_id_name.short_description = 'merchant_id_name'

## Django Model 数据定义
### JsonField
jsonfield 允许在数据库中储存一个 json 格式内容。
#### 学习网址
[(22条消息) Django ORM中原生JSONField的使用方法_蓝绿色\~菠菜的博客-CSDN博客_django jsonfield](https://blog.csdn.net/bocai_xiaodaidai/article/details/110820449)
### Django 创建索引
db_index: 为 True 时，为字段创建索引  
primary_key: 为 True 时，字段为模型的主键，为字段创建索引  
unique: 为 True 时，为字段创建唯一索引。  
更复杂的索引见下：  
[(13条消息) Django数据库学习——索引_柿子镭的博客-CSDN博客_django 索引](https://blog.csdn.net/weixin_45890771/article/details/121068647)

## Django 操纵数据库
### 数据库插入
插入数据两种方法，create 和 save  
create 过程中如果有外键，可以通过外键名称加上 _ 加上所需要的数据列，表示外键的取值，不用 filter 一个外键的对象出来。比如 parkingPlace_id=12345，表示 id 是 12345 的 parkingPlace
### 数据库修改
修改数据两种方法，.update() 和 save
#### 关于 save
##### *笨办法 save*
我正在尝试更新 Django 数据库中的用户.  
提取的数据如下:  
fetched_data = {  
'id': 1,  
'first_name': 'John',  
'last_name': 'Doe',  
'phone': '+32 12',  
'mobile_phone': '+32 13',  
'email': 'myemail@hotmail.com',  
'username': 'myusername'  
}  
我得到这个 id 的用户如下:  
old_user = User.objects.get(pk=fetched_data\['id'\])  
如果我按如下方式更新用户:  
old_user.username = fetched_data\['username'\]  
old_user.first_name = fetched_data\['first_name'\]  
......  
old_user.save()
##### *聪明办法 save*
old_user = User.objects.get(pk=fetched_data\['id'\])  
for key, value in fetched_data.iteritems():  
setattr(old_user, key, value)  
old_user.save()
##### *两种方法本质区别*
如果出现一个东西，每一次都要在他后面加上（xxx=yyy）来对他进行更改，且不能一次进行多项更改，此时用循环加 setattr 就可以快速实现。
#### 关于 update
my_id = fetched_data.pop('id') \# remove 'id' from \`fetch_data\`  
\# as it is not supposed to be updated

User.objects.filter(pk=my_id).update(\*\*fetched_data)  
\# unpack the content of \`dict\` ^

### 数据库删除
删除数据两种方法，.get().delete() 和.filter().delete()
### 数据库查询数据
#### Model.objects.filter() 的后缀用法
\_\_gt 大于  
\_\_gte 大于等于  
\_\_lt 小于  
\_\_lte 小于等于  
\_\_in 存在于一个 list 范围内  
\_\_startswith 以…开头  
\_\_istartswith 以…开头 忽略大小写  
\_\_endswith 以…结尾  
\_\_iendswith 以…结尾，忽略大小写  
\_\_range 在…范围内  
\_\_year 日期字段的年份  
\_\_month 日期字段的月份  
\_\_day 日期字段的日  
\_\_isnull=True/False
#### 外键的检索
外键名称加上 _ 加上所需要的数据列，表示外键的数据列。比如.filter(user_id='xxx') 表示 user 作为外键的 id 是 xxx。
#### 如何 filter 两次
filter 内部可以添加两个条件  
filter 后变成 query set 类型，可以直接 for i in queryset。因此不能 filter 两次。  
如果先通过 objects.get_queryset() 获取到 queryset，就可以连续 filter 这个 queryset 两次了。
#### 查询的方法
Object.Filter, object.exclude
### queryset 计数
#### Queryset.count()
Select count（\*） from
#### 或者 len(queryset)
Select \* from

## django 图片上传数据库
### 图片上传到数据库
Model 用 imagefild，同时规定上传的文件夹即可，数据库存的是路径，图片存在文件夹中，注意 url 要 + 一段关于 static 的代码，规定了静态路径。  
对于一个 post 请求，图片存在 post 的 body 中，后端通过 request.FILES.get() 获取。  
如果是多个图片或者多个文件，通过 request.FILES.getlist() 获取。  
[(13条消息) Django 上传图片存储到数据库中_沃特艾文儿～的博客-CSDN博客_django上传图片保存到数据库](https://blog.csdn.net/qq_44614115/article/details/113361735)
### 实现用户通过访问链接获取图片
#### 方法一
httpresponse 可以直接返回图片，也就是可以再写一个接口，通过接口返回图片
#### 方法二
imagefield 有.url 方法，可以获取 url，拼接上域名，可以直接访问图片，比如 http://127.0.0.1:8000/media/2019.jpg 可以直接访问 2019.jpg 这个文件。  
（需要在 url.py 文件中，通过 static 进行设置，把 path 加上一个 static 的文件夹地址）  
urlpatterns = \[  
path('admin/', admin.site.urls),  
path('api/upload-photo',UploadView.as_view()),  
path('api/delete-photo',DeletePhotoView.as_view())  
\]+ static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
#### 方法三
Django storage 好像可以实现，详见下面的博客，我还没学会  
[(13条消息) django返回图片给前端_久醉绕心弦，的博客-CSDN博客_django返回图片给前端](https://blog.csdn.net/weixin_42262081/article/details/123380920)
### Django 将 Request.FILES 中的图片储存到本地，不写入数据库
#### 肯定需要重命名，之后才能存储，不然可能出现重名，通过 uuid 实现
from uuid import uuid4

@app.route('/detect', methods=\['POST'\])  
def recognize():

tmp_fname = os.path.join(app.config\['UPLOAD_FOLDER'\], uuid4().\_\_str\_\_())

image = request.files\['image'\]  
image.save(tmp_fname)
#### 一开始网上说，直接 pic=request.FILES.get('pic')，pic.save() 就行，但是我试了试，一直不行，直到看到了下面的方法：
import os  
from django.core.files.storage import default_storage  
from django.core.files.base import ContentFile  
from django.conf import settings

data = request.FILES\['image'\] \# or self.files\['image'\] in your form

path = default_storage.save('tmp/somename.mp3', ContentFile(data.read()))  
tmp_file = os.path.join(settings.MEDIA_ROOT, path)

## Django 定时任务
### 相关帖子
[(19条消息) Django定时任务四种实现方法总结_Yale曼陀罗的博客-CSDN博客_django 定时任务](https://blog.csdn.net/weixin_42782150/article/details/123212604)  
[(19条消息) Django中的定时任务_榤捷ღ的博客-CSDN博客_django 定时任务](https://blog.csdn.net/m0_65862716/article/details/125152314)  
[(19条消息) Django crontab 定时任务_tianv5的博客-CSDN博客_django cronjobs](https://blog.csdn.net/sunt2018/article/details/88084341)  
[(19条消息) Django 中使用Celery实现异步任务_haeasringnar的博客-CSDN博客](https://blog.csdn.net/haeasringnar/article/details/105232966)
### 方法一：使用 django-crontab 插件来实现定时任务
有特殊的 crontab 语法
### 方法二：使用 django-apscheduler 插件实现定时任务
比较灵活，但是比 crontab 更复杂
### 方法三：使用 Celery 插件实现定时任务
celery 配置比较麻烦
### 方法四：自建代码实现定时任务
import os, sys, time, datetime  
import threading  
import django  
base_apth = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(\_\_file\_\_))))  
\# print(base_apth)  
\# 将项目路径加入到系统 path 中，这样在导入模型等模块时就不会报模块找不到了  
sys.path.append(base_apth)  
os.environ\['DJANGO_SETTINGS_MODULE'\] ='base_django_api.settings' \# 注意：base_django_api 是我的模块名，你在使用时需要跟换为你的模块  
django.setup()  
from base.models import ConfDict  
def confdict_handle():  
while True:  
try:  
loca_time = datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S')  
print(' 本地时间：'+str(loca_time))  
time.sleep(10)  
except Exception as e:  
print(' 发生错误，错误信息为：', e)  
continue  
def main():  
'''  
主函数，用于启动所有定时任务，因为当前定时任务是手动实现，因此可以自由发挥  
'''  
try:  
\# 启动定时任务，多个任务时，使用多线程  
task1 = threading.Thread(target=confdict_handle)  
task1.start()  
except Exception as e:  
print(' 发生异常：%s' % str(e))  
if \_\_name\_\_ == '\_\_main\_\_':  
main()
### 如何测试定时任务配置对了没有？
只需要为你写的定时任务函数配一个 url，对于 url 进行测试，如果通过了，那么定时任务部署到服务器上也可以用。
### 我的方法
写一个函数，之后在 settings 里面配置定时执行时间  
之后在 cron.py 里面配置任务执行的具体函数位置  
之后在 modules 里面定义好定时任务的函数

## Django 读取 request
### 原生与 drf 的区分
request.POST(只能获取表单数据) 、 request.body(获取非表单数据) 是 django 原生的属性，request.data(包含表单及非表单数据) 则是 DRF 封装的属性。

表单数据：a = request.POST.get('a') alist = request.POST.getlist('a') Content-Type(请求头) 为 application/x-www-form-urlencoded(form 表单默认格式)

非表单数据： str = request.body.decode() Content-Type(请求头) 为 application/json(json 格式)，multipart/form-data(文件) 等  
或 data = json.loads(request.body)（将 json 数据转成 python 对象）
### 读取表单中的文件，并读取其内容
在 serializer 中，  
file = self.validated_data.get("file")  
decoded_file = file.read().decode('utf-8').splitlines()  
reader = csv.DictReader(decoded_file)  
try:  
for row in reader:  
print(row)  
我们通过第一行代码获取到的是 InMemoryUploadedFile，此时要用自带的.read() 方法打开。
## 

## url 管理
djangourl 分为好几级，在一个 start app 后会生成 url.py，start project 也会生成 url.py，这些是可以相互引用的，方便模块的管理。
### 例子
#### 顶级 url（project）
urlpatterns = \[  
\# path('', Home.as_view(), name='home'),  
path('admin/', admin.site.urls),  
path('api/v1/', include("v1.urls", namespace="system_conf_app_api")),  
path('jsi18n/', JavaScriptCatalog.as_view(), name='javascript-catalog'),  
\]
#### 二级 url（v1、v2 等，每个版本一个 url）
urlpatterns = \[  
path('payment/notify/', include("v1.modules.notify.urls")),  
path('payment/method/', include("v1.modules.payment_method.urls")),  
path('orders/', include("v1.modules.orders.urls")),  
path('distributors-products/', include("v1.modules.distributors_products.urls")),  
path('job/', include("v1.modules.io_records.urls")),  
path('webhooks/', include("v1.modules.webhooks.urls")),  
path('health-check', csrf_exempt(HealthCheckApiView.as_view())),  
path('regions/', include("v1.modules.silk_regions.urls")),  
path('get-ip', csrf_exempt(GetRemoteIpApiView.as_view())),  
path('enhancement-distributors-products/', include("v1.modules.enhancement_distributors_products.urls")),  
path('3vjia/', include("v1.modules.sunvega.urls")),  
path('carts-pic/',include("v1.modules.cart_pic.urls")),  
\]
### 三级 url（module、app）
urlpatterns = \[  
path('\<cart_id\>/upload-photo', csrf_exempt(UploadView.as_view())),  
path('delete-photo',csrf_exempt(DeletePhotoView.as_view())),  
\]