---
aliases: []
date created: 2023-08-20T15:55:06+08:00
date modified: 2024-01-13T19:21:06+08:00
dg-publish: true
tags: []
title: struct
---

## C 语言 typedef 写法
### 写法一
```c
typedef struct Student  
{  
int a;  
}Stu;
Stu a[10];
```

### 写法二
```c
typedef struct  
{  
int a;  
}Stu;
Stu a[10];
```
## C++ 直接写
```c
struct Student  
{  
int a;  
};
Student a[10];
```