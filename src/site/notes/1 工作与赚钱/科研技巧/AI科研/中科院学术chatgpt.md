---
{"dg-publish":true,"permalink":"/1 工作与赚钱/科研技巧/AI科研/中科院学术chatgpt/","title":"中科院学术chatgpt","tags":["category/AI"]}
---


## 中科院学术 ai 官网
<https://github.com/binary-husky/chatgpt_academic>  
## 部署教程
<https://zhuanlan.zhihu.com/p/617720144>  
[整活 | 中科院学术版ChatGPT「部署全流程」 - 知乎](https://zhuanlan.zhihu.com/p/624774384)  
## 简单部署
[Release Version 3.43 & Win/Mac一键安装包 · binary-husky/gpt\_academic · GitHub](https://github.com/binary-husky/gpt_academic/releases/tag/version3.43)

## 我的配置
### api token
[chatgptAPIKEY](../../../3%20计算机/创建、效率与技巧/AI/不同的ai/chatgpt/chatgpt账号/chatgptAPIKEY.md)
### 笔记本
```python
# [step 1]>> API_KEY = "sk-123456789xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx123456789"。极少数情况下，还需要填写组织（格式如org-123456789abcdefghijklmno的），请向下翻，找 API_ORG 设置项  
API_KEY = "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"    # 可同时填写多个API-KEY，用英文逗号分割，例如API_KEY = "sk-openaikey1,sk-openaikey2,fkxxxx-api2dkey1,fkxxxx-api2dkey2"  
  
  
# [step 2]>> 改为True应用代理，如果直接在海外服务器部署，此处不修改  
USE_PROXY = True  
if USE_PROXY:  
    """  
    填写格式是 [协议]://  [地址] :[端口]，填写之前不要忘记把USE_PROXY改成True，如果直接在海外服务器部署，此处不修改  
            <配置教程&视频教程> https://github.com/binary-husky/gpt_academic/issues/1>  
    [协议] 常见协议无非socks5h/http; 例如 v2**y 和 ss* 的默认本地协议是socks5h; 而cl**h 的默认本地协议是http  
    [地址] 懂的都懂，不懂就填localhost或者127.0.0.1肯定错不了（localhost意思是代理软件安装在本机上）  
    [端口] 在代理软件的设置里找。虽然不同的代理软件界面不一样，但端口号都应该在最显眼的位置上  
    """    # 代理网络的地址，打开你的*学*网软件查看代理的协议(socks5h / http)、地址(localhost)和端口(11284)  
    proxies = {  
# [协议]://  [地址]  :[端口]  
"http":  "socks5h://localhost:11284",  # 再例如  "http":"http://127.0.0.1:7890",        
"https": "socks5h://localhost:11284",  # 再例如  "https":"http://127.0.0.1:7890",       
"https": "socks5h://localhost:17890",  
"https": "http://localhost:17890",  
}  
else:  
    proxies = None
```
### tju 台式机
```python
# [step 2]>> 改为True应用代理，如果直接在海外服务器部署，此处不修改  
USE_PROXY = True  
if USE_PROXY:  
"""  
填写格式是 [协议]:// [地址] :[端口]，填写之前不要忘记把USE_PROXY改成True，如果直接在海外服务器部署，此处不修改  
<配置教程&视频教程> https://github.com/binary-husky/gpt_academic/issues/1>  
[协议] 常见协议无非socks5h/http; 例如 v2**y 和 ss* 的默认本地协议是socks5h; 而cl**h 的默认本地协议是http  
[地址] 懂的都懂，不懂就填localhost或者127.0.0.1肯定错不了（localhost意思是代理软件安装在本机上）  
[端口] 在代理软件的设置里找。虽然不同的代理软件界面不一样，但端口号都应该在最显眼的位置上  
"""  
# 代理网络的地址，打开你的*学*网软件查看代理的协议(socks5h / http)、地址(localhost)和端口(11284)  
proxies = {  
# [协议]:// [地址] :[端口]  
# "http": "socks5h://localhost:21733", # 再例如 "http":"http://127.0.0.1:7890",
# "https": "socks5h://localhost:21733", # 再例如 "https":"http://127.0.0.1:7890",
"http": "socks5h://127.0.0.1:8889",  
"https": "http://127.0.0.1:8889",  
}  
else:  
proxies = None
```
### 安装与配置
1.安装 python  
2.git clone  
3.创建 pycharm 虚拟环境  
4.pip install -r requirements.txt  
5.配置 config 文件  
6.在右上方设置一键执行 main 函数