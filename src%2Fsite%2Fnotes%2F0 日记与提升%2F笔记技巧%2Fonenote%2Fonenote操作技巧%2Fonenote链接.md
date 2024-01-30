---
aliases: []
created: 2022-12-05 20:18:01+08:00
date created: 2023-07-05T21:38:32+08:00
date modified: 2024-01-14T17:34:42+08:00
dg-publish: true
tags: []
title: onenote链接
updated: 2022-12-05 20:46:35+08:00
---

**使用超链接**  
OneNote 有一套强大的对象链接功能，可以创建指向**笔记本、分区组、分区、页面、段落**的链接，其中“段落”包括任何块级元素，包括页面上的**各级标题、自然段、列表项、[表格单元格](https://www.zhihu.com/search?q=%E8%A1%A8%E6%A0%BC%E5%8D%95%E5%85%83%E6%A0%BC&search_source=Entity&hybrid_search_source=Entity&hybrid_search_extra=%7B%22sourceType%22%3A%22answer%22%2C%22sourceId%22%3A1525594474%7D)**。  
要复制指向某对象的超链接，只需要右键打开上下文菜单，选择 Copy Link to Notebook/Section Group/Section/Page/Paragraph 即可，并且针对页面可以一次复制多个页面的链接。超链接可以跨笔记本，甚至可以跨 cloud storage tenant（比如个人 OneDrive 上的笔记和机构 OneDrive for Business 的笔记链接）。  
我的笔记大量使用超链接，例如会议记录里把当次会议的相关文献、长篇思考记录链接进去，并且创建反向链接——如果会议上的讨论对文献产生了新理解、让思考更深入，那么可以把会议记录的页面（或者更细化到关于这篇文献、这个思路的讨论记录的段落）的链接保存在文献、思考笔记里。又例如一篇文献的笔记里用到了另一篇文献，则可以创建对应的链接，如下图。  
![image1](/img/user/resources/attachments/image1-1.jpeg)

OneNote 内部超链接示例  
这样做即可自然形成 [**知识网络**](https://www.zhihu.com/search?q=%E7%9F%A5%E8%AF%86%E7%BD%91%E7%BB%9C&search_source=Entity&hybrid_search_source=Entity&hybrid_search_extra=%7B%22sourceType%22%3A%22answer%22%2C%22sourceId%22%3A1525594474%7D)，当需要回顾一次会议、一段思考、一篇文献的时候，很容易迅速回顾相关内容。  
此外，OneNote 超链接还有如下几个我觉得挺有用的功能：
- 对于**云同步**的笔记，复制链接时会同时创建 **OneNote 链接**、**网页链接**，当粘贴到 OneNote 里时，会使用 OneNote 链接，当粘贴到其他地方时（例如如果粘贴到 Outlook 日历事件详细信息或者邮件正文里），会同时粘贴两个链接，显示为 <u>对象名字 (Web view)</u>。这样也可以通过 Web 版 OneNote 查看相关内容。
- 链接系统使用**层级对象 ID** 指定对象，并自带纠错功能，因此改变页面顺序、移动页面到其他分区（甚至其他笔记本）后，链接**很可能仍然可以**找到正确的页面。如果创建了指向段落的链接，在段落删除后，仍然可以定位到正确的页面。
- 导出 **PDF** 时**自动转换**：从 OneNote 导出 PDF 时（我有时候会用这个方式共享笔记），如果导出内容含有指向 A 的 OneNote 链接，且 A 本身**也属于**导出 PDF 的一部分，则 PDF 内该链接会**指向 PDF 内的 A**。不过如果 A **不是**导出内容的一部分，则**保持原样**，即如果收件人有访问被指向笔记本的权限，则可以通过链接找到笔记内容。