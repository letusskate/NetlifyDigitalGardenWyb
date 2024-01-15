---
{"dg-publish":true,"permalink":"/3 计算机/编程语言和语法/python/库的运用/Python tqdm进度条/","title":"Python tqdm进度条"}
---


## 正常使用
For I in tqdm.tqdm(range(100)):  
Pass
## While 中使用 tqdm
### While True
def generator():  
while True:  
yield  
for \_ in tqdm(generator()):  
\# Do stuff here
### while 后带有条件
def generator():  
while condition:  
yield