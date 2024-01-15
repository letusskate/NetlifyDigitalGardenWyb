---
{"dg-publish":true,"permalink":"/3 计算机/编程语言和语法/cpp/struct/","title":"struct"}
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