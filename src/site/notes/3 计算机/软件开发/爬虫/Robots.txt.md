---
aliases: []
created: 2022-11-23 20:38:51+08:00
date created: 2023-07-05T11:13:20+08:00
date modified: 2024-01-13T19:21:06+08:00
dg-publish: true
tags: []
title: Robots.txt
updated: 2022-11-23 20:41:14+08:00
---

规定了爬虫的爬取规范

作者：yangzi123  
链接：https://www.zhihu.com/question/408430868/answer/2156616594  
来源：知乎  
著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。

robots.txt 文件是在 1994 年出现的，那时搜索引擎技术刚刚兴起。从整个互联网寻找资源的搜索引擎， 像 Alta Vista 和 DogPile，开始和那些把网站按照主题进行分类的门户网站公司竞争激烈，比如像 Yahoo! 这样的门户网站。互联网搜索规模的增长不仅说明网络爬虫数量的增长，而且也体现了网络爬虫搜集信息的能力在不断变化。  
虽然我们今天认为这种能力是十分平常的，但是当自己网站文件机构深处隐藏的信息变成搜索引引擎首页上可以检索的内容时，有些管理员还是非常震惊。于是，robots.txt 文件，也被称为机器人排除标准（Robots Exclusion Standard）,应运而生。
- robots.txt 的语法没有标准格式。他是一种业内惯用的做法，但是没有人可以阻止别人创建自己版本的 robots.txt 文件（并不是说如果它不符合主流标准，机器人就可以不遵守）。它是一种被企业广泛认可的习惯，主要是这么做很直接，而且企业也没有动力去发展自己的版本，或者去尝试去改进它。
- robots.txt 文件并不是一个强制性约束。他只是说“请不要抓取网站这些内容”。有很多网络爬虫库都支持 robots.txt 文件（虽然这些默认设置很容易修改）。另外，按照 robots.txt 文件采集信息比直接采集信息麻烦得多（毕竟，你需要采集、分析，并在代码逻辑中处理页面内容）。  
机器人排除标准得语法很直接。和 Python 语言一样，注释都是用 \# 号，用换行结尾，可以用在文件的任意位置。  
文件第一行非注释内容是 User-agent:，注明具体那些机器人需要遵守规则。后面是一组 Allow: 或 Disallow:，决定是否允许机器人访问网站该部分内容。星号（\*）是通配符，可以用于 User-agent:，也可以用于 URL 链接中。  
如果一条规则后面跟着一个与之矛盾的规则，则按照后一条规则执行。例如：  
\# Welcome to me robots.txt file! User-agent: \* Disallow: \* User-Agent: Googlebot Allow: \* Disallow: /private  
在这个例子中，所有机器人都被禁止访问任何内容，除了 Google 的 [网络机器人](https://www.zhihu.com/search?q=%E7%BD%91%E7%BB%9C%E6%9C%BA%E5%99%A8%E4%BA%BA&search_source=Entity&hybrid_search_source=Entity&hybrid_search_extra=%7B%22sourceType%22%3A%22answer%22%2C%22sourceId%22%3A2156616594%7D)，他被允许访问网站上除了 /private 位置的所有内容。

是否按照 robots.txt 文件的要求写网络爬虫是由你自己决定的，当爬虫毫无节制地采集网站的时候，强烈建议你遵守。