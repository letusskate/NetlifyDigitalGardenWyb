---
{"dg-publish":true,"permalink":"/0 日记与提升/笔记技巧/onenote/onenote同步与管理/onenote加速同步/","title":"onenote加速同步"}
---


## 再也没有比这更便捷的方法了
话说 [自动同步](https://www.zhihu.com/search?q=%E8%87%AA%E5%8A%A8%E5%90%8C%E6%AD%A5&search_source=Entity&hybrid_search_source=Entity&hybrid_search_extra=%7B%22sourceType%22%3A%22answer%22%2C%22sourceId%22%3A1029145820%7D) 慢，那就手动同步啊  
右键单击笔记本，再点击“同步”，手机端马上就看见啦！与 [自动同步速度](https://www.zhihu.com/search?q=%E8%87%AA%E5%8A%A8%E5%90%8C%E6%AD%A5%E9%80%9F%E5%BA%A6&search_source=Entity&hybrid_search_source=Entity&hybrid_search_extra=%7B%22sourceType%22%3A%22answer%22%2C%22sourceId%22%3A1029145820%7D) 完全不是一个数量级！  
![image1](/img/user/resources/attachments/image1-2.jpeg)

## 借助外力
1.使用 [坚果云](https://www.zhihu.com/search?q=%E5%9D%9A%E6%9E%9C%E4%BA%91&search_source=Entity&hybrid_search_source=Entity&hybrid_search_extra=%7B%22sourceType%22%3A%22answer%22%2C%22sourceId%22%3A%221112999059%22%7D) 进行同步、  
2.订阅全球版 OneDrive for business，  
3.订阅世纪互联 office365 商业协作版，  
4.订阅 [世纪互联](https://www.zhihu.com/search?q=%E4%B8%96%E7%BA%AA%E4%BA%92%E8%81%94&search_source=Entity&hybrid_search_source=Entity&hybrid_search_extra=%7B%22sourceType%22%3A%22answer%22%2C%22sourceId%22%3A%221112999059%22%7D)office365 商业版。

## 改代理 2
[https://onedrive-hosts.learningman.top](https://onedrive-hosts.learningman.top/)  
[一个自动维护的 Onedrive（UWP 版）hosts 列表 – Zxilly's Blog (learningman.top)](https://learningman.top/archives/245)

## 改代理 1
作者：知乎用户 gJ21ul  
链接：https://www.zhihu.com/question/49167234/answer/1038034285  
来源：知乎  
著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。

C:\Windows\System32\drivers\etc\\[hosts](https://www.zhihu.com/search?q=hosts&search_source=Entity&hybrid_search_source=Entity&hybrid_search_extra=%7B%22sourceType%22%3A%22answer%22%2C%22sourceId%22%3A1038034285%7D)  
将以下添加到 hosts 文件  
\#通用  
13.107.42.12 d.docs.live.net  
13.107.42.12 docs.live.net  
\#Onedrive 客户端  
13.107.42.12 api.onedrive.com  
13.107.42.12 public.bn.files.1drv.com  
13.107.42.12 public.dm.files.1drv.com  
40.90.136.163 skydrivesync.policies.live.net  
157.55.109.230 skydrivesync.policies.live.net  
40.77.224.8 skydrivesync.policies.live.net  
104.74.21.118 oneclient.[sfx](https://www.zhihu.com/search?q=sfx&search_source=Entity&hybrid_search_source=Entity&hybrid_search_extra=%7B%22sourceType%22%3A%22answer%22%2C%22sourceId%22%3A1038034285%7D).ms  
23.1.189.37 oneclient.sfx.ms  
23.56.30.148 oneclient.sfx.ms  
52.114.88.20 mobile.pipe.aria.microsoft.com  
52.114.132.73 mobile.pipe.aria.microsoft.com  
52.114.77.33 mobile.pipe.aria.microsoft.com  
40.90.136.166 storage.live.com  
157.55.109.226 storage.live.com  
40.90.136.1 storage.live.com  
52.242.211.89 skydrive.wns.windows.com  
52.139.250.253 skydrive.wns.windows.com  
40.90.189.152 skydrive.wns.windows.com  
\#Onenote UWP 客户端  
52.109.132.2 contentsync.onenote.com  
52.109.48.2 contentsync.onenote.com  
52.109.44.3 contentsync.onenote.com  
52.109.48.0 www.[onenote](https://www.zhihu.com/search?q=onenote&search_source=Entity&hybrid_search_source=Entity&hybrid_search_extra=%7B%22sourceType%22%3A%22answer%22%2C%22sourceId%22%3A1038034285%7D).com  
52.109.2.10 [www.onenote.com](http://www.onenote.com)  
52.109.44.1 [www.onenote.com](http://www.onenote.com)  
23.57.112.187 c1-onenote-15.cdn.office.net