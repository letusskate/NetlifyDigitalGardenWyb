---
aliases: []
created: 2023-03-07 10:26:21+08:00
date created: 2023-07-05T16:15:59+08:00
date modified: 2024-01-13T19:21:09+08:00
dg-publish: true
tags: []
title: Restframework
updated: 2023-04-06 14:08:55+08:00
---

## view 的层次架构
### 总划分
GenericViewSet(ViewSetMixin, generics.GenericAPIView) ---DRF  
GenericAPIView(views.APIView) ---DRF  
APIView(View) ---DRF  
View ---Django
### 第一阶
\# 第一阶:  
ViewSetMixin  
ViewSet(ViewSetMixin, views.APIView)  
GenericViewSet(ViewSetMixin, generics.GenericAPIView)  
ModelViewSet(mixins.{C/R/U/D/L}ModelMixin, GenericViewSet)  
ReadOnlyModelViewSet(mixins.{R/L}ModelMixin, GenericViewSet)
### 第二阶
\# 第二阶:  
GenericAPIView(views.APIView)  
CreateAPIView  
ListAPIView  
RetrieveAPIView  
DestroyAPIView  
UpdateAPIView  
ListCreateAPIView  
RetrieveUpdateAPIView  
RetrieveDestroyAPIView  
RetrieveUpdateDestroyAPIView
### 第三阶
\# 第三阶  
APIView(View)
### 第四阶
\# 第四阶  
ContextMixin  
View  
TemplateResponseMixin  
TemplateView(TemplateResponseMixin, ContextMixin, View)  
RedirectView(View)

## 自定义高层次 view 的具体内容
### 具体包含那几个可以覆写的接口
一个 ModelViewSet 的返回内容是写在 create()、list()、retrieve()、update()、destroy() 这些方法里的，这些方法分别对应了 post、get、get、put/patch 和 delete 这些请求方法，这些信息都放在 Response 对象里面返回到前端页面去。如果您想自定义返回的状态码，您可以在 Response 对象中指定 status 参数，例如：  
from rest_framework import status  
from rest_framework.response import Response  
class UserView(ModelViewSet):  
\# 省略其他代码  
def create(self, request):  
\# 省略其他代码  
return Response(data, status=status.HTTP_201_CREATED) \# 返回 201 状态码
### 
### 如何更改 list
####  重写部分的 filter
deffilter_TenantUser(self,queryset,name,value):  
print(UserGroup.objects.filter(tenantUser_id=value))  
returnqueryset
#### 重写 list 方法实现 filter
deflist(self,request,\*args,\*\*kwargs):  
if"user"inrequest.query_params:  
res=super().list(request)  
else:  
returnsuper().list(request)
#### 通过外键反向查找写 filterset
filterset_fields={  
'group_userGroup\_\_tenantUser_id':\['exact'\],  
'name':\['exact','icontains'\]  
}  
其中，group_userGroup 是外键定义时的反查，即 related_name，之后\_\_tenantUser 是指反查到 userGroup 的其他列，之后 _id 是指取得 tenantUser 的 id 属性。总的来说，可以实现找出 tenantUser 的 id 为某值时，对应的所有 group。
#### 通过自定义类实现 filter
view 中：  
filter_backends=(TenantFilterBackend,SearchFilter)  
filterset_class=TenantUserListFilter  
search_fields=("email","first_name","last_name")  
Filters.py 中：  
from django_filters.rest_framework import DjangoFilterBackend  
from django_filters import rest_framework as filters

from .models import TenantUser

class TenantFilterBackend(DjangoFilterBackend):  
def filter_queryset(self, request, queryset, view):  
user = request.user  
user_id = user.token\["user_id"\]  
tenant = TenantUser.objects.get(pk=user_id).tenant  
queryset = queryset.filter(tenant=tenant, is_deleted=False)  
return super().filter_queryset(request, queryset, view)

class TenantUserListFilter(filters.FilterSet):  
email = filters.CharFilter(field_name="email", lookup_expr='icontains')  
last_login_start_at = filters.NumberFilter(field_name="last_login", lookup_expr='gte')  
last_login_due_at = filters.NumberFilter(field_name="last_login")  
group = filters.NumberFilter(field_name="tenantUser_userGroup\_\_group_id")

class Meta:  
model = TenantUser  
fields = \['is_active'\]
### 
### 如何更改 update
#### 方法一
对于 update 的重写，不会导致 put/patch 的冲突，因为 ModelViewSet 内部已经根据请求方法来区分调用 update() 还是 partial_update()。您可以在重写 update() 时，根据 request 中的 partial 属性来判断是全量更新还是部分更新。例如：  
from rest_framework import viewsets  
from rest_framework.response import Response  
class UserViewSet(viewsets.ModelViewSet):  
\# 省略其他代码  
def update(self, request, pk=None):  
\# 重写 update 方法  
user = self.get_object() \# 调用 get_object 方法获取单个用户对象  
if request.partial: \# 判断是否是部分更新（patch）  
user_ser = UserSerializer(user, data=request.data, partial=True) \# 调用序列化器，并设置 partial 为 True  
else: \# 否则是全量更新（put）  
user_ser = UserSerializer(user, data=request.data) \# 调用序列化器，并设置 partial 为 False  
user_ser.is_valid(raise_exception=True) \# 验证数据有效性，如果有错误则抛出异常  
user_ser.save() \# 保存数据到数据库  
res = {'code': 200, 'msg': ' 成功 ', 'data': user_ser.data} \# 自定义响应格式  
return Response(res) \# 返回响应
#### 方法二
重写一个 update、再重写一个 partial_update
### 
### 如何更改 delete 为软删除
#### 方法一
在 ModelViewSet 中定义一个自定义的 action，例如@action(methods=\[‘delete’\], detail=True) def soft_delete(self, request, pk=None)  
在这个 action 中，获取要删除的对象，例如 obj = self.get_object()  
修改对象的某个属性，例如 obj.is_deleted = True  
保存对象到数据库，例如 obj.save()  
返回一个合适的响应，例如 return Response(status=status.HTTP_204_NO_CONTENT)  
这样，就可以实现软删除（soft delete）的功能，即在数据库中保留被删除的对象，但是通过某个属性来标记它们。  
class ActiveUserView(ModelViewSet):  
queryset = User.objects.all()  
permission_classes = \[IsAuthenticated\]  
http_method_names = \['get', 'delete'\]  
serializer_class = SomeUserSerializer  
@action(methods=\['delete'\], detail=True)  
def soft_delete(self, request, pk=None):  
user = self.get_object()  
invite = Invite.objects.get(email=user.email)  
invite.is_deleted = True  
invite.save()  
return Response(status=status.HTTP_204_NO_CONTENT)
#### 方法二
改写 perform_delete 方法  
instance.status=True  
Instance.save()
### 
### 如何更改 retrive
#### 显示另一个表数据方法一
我明白了，你想展示的是其他表的内容。另一个表，表中有这个表的外键，而不是这个表有另一个表的外键。那么你可以使用 related_name 属性来指定反向关系的名称。例如：  
from django.db import models  
class Author(models.Model):  
name = models.CharField(max_length=100)  
age = models.IntegerField()  
class Book(models.Model):  
title = models.CharField(max_length=200)  
author = models.ForeignKey(Author, on_delete=models.CASCADE, related_name="books") \# 设置 related_name 为 books  
这样，你就可以在 AuthorSerializer 中使用 books 字段来展示 Book 模型的数据。例如：  
from rest_framework import serializers  
from .models import Author, Book  
class BookSerializer(serializers.ModelSerializer):  
class Meta:  
model = Book  
fields = \["title"\]  
class AuthorSerializer(serializers.ModelSerializer):  
books = BookSerializer(many=True) \# 使用 books 字段来展示 Book 模型的数据  
class Meta:  
model = Author  
fields = \["name", "age", "books"\]
#### 显示另一个表数据方法二
在 views 里面  
def retrieve(self, request, \*args, \*\*kwargs):  
user_id = kwargs.get("pk", -1)  
user = TenantUser.objects.filter(id=user_id).first()  
user_serializer = self.get_serializer(user)  
user = user_serializer.data  
user_groups = UserGroup.objects.filter(tenantUser_id=user_id)  
group_ids = \[user_group.group.id for user_group in user_groups\]  
cur_user = user.copy()  
cur_user.update({"groups": group_ids})  
return Response(cur_user)
#### 显示另一个表数据方法三
在 models 里面定义函数：  
def groups(self):  
user_groups = UserGroup.objects.filter(tenantUser_id=self.pk)  
return \[model_to_dict(user_group.group) for user_group in user_groups\]

def permissions(self):  
groups = self.groups()  
permissions = set()  
for group in groups:  
permissions.update(  
set(GroupPermission.objects.filter(group_id=group\['id'\]).values_list('permission\_\_name', flat=True))  
)  
return list(permissions)  
之后在 serializer 中加入这两个 field  
groups = serializers.ListField(read_only=True)  
permissions = serializers.ListField(read_only=True)  
即可正常显示。
#### 显示这个表的外键
在 serializer 设置 depth 参数，=1 表示展示一级数据，=2 表示展示两级数据

## Url 怎么写？
path(  
"groups",  
GroupModelViewSetAPIView.as_view({'get': 'list', 'post': 'create'}),  
name="group-list-create"  
),  
path(  
"groups/\<int:pk\>",  
GroupModelViewSetAPIView.as_view(  
{'get': 'retrieve', 'put': 'update', 'patch': 'partial_update', 'delete': 'soft_delete'}  
),  
name="group-retrieve-update-destroy"  
)

## restframework 的 response
returnResponse({'message':'invalidusers'},status=status.HTTP_404_NOT_FOUND)  
我在 serializer 重写了 create 方法，defcreate(self,validated_data):，在函数里这样写 response 就会报错，必须要把 message 换成 detail 才不会报错。我也不知道为什么。

##