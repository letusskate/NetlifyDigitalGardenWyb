---
{"dg-publish":true,"permalink":"/3 计算机/编程语言和语法/python/acm/python栈的深度/","title":"python栈的深度"}
---


太深了报错：  
RuntimeError: maximum recursion depth exceeded in comparison

sys.setrecursionlimit(3000) 把栈的深度改为 3000  
print(sys.getrecursionlimit())