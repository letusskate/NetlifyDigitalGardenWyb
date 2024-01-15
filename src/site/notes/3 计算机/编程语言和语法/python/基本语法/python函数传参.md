---
{"dg-publish":true,"permalink":"/3 计算机/编程语言和语法/python/基本语法/python函数传参/","title":"python函数传参"}
---


python 函数传参  
2022 年 10 月 31 日  
9:12

## \*args 与 \*\*kwargs
def receive_args(\*args, \*\*kwargs):  
print('args is: ',args)  
print('kwargs is: ',kwargs)  
receive_args(0,1,2,name='jyz',gender='male',hhh='xxx')  
a = 0  
b = 1  
d = {'name':'jyz','gender':'male'}  
receive_args(a,b,d)