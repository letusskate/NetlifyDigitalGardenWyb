---
{"dg-publish":true,"permalink":"/3 计算机/计算机网络/计算机网络常识/BS 与 CS/","title":"BS 与 CS"}
---


## 知乎回答
[安全验证 - 知乎](https://zhuanlan.zhihu.com/p/71222679)  
我认为 BS 是 CS 的一种特例，两者并不是对立的。BS 和 CS 最大的区别有两个：  
1、客户端服务端交互不同。BS 一定是请求 - 响应式，客户端发送请求，服务端完成业务逻辑，返回响应结果；CS 则不一定是这种模式，可以是服务端自发受到事件、外部消息触发业务逻辑处理，后将结果推送到客户端。  
2、业务逻辑处理分布不同。BS 的业务逻辑绝大部分都在服务端，客户端只负责收集数据和显示，是瘦客户端；CS 允许客户端有一定的业务逻辑处理，能够更快速的响应用户的一些操作。