---
aliases: []
created: 2021-12-28 17:51:27+08:00
date created: 2023-07-05T11:13:20+08:00
date modified: 2024-01-13T19:21:09+08:00
dg-publish: true
tags: []
title: Web课程 副本
updated: 2022-01-01 12:35:56+08:00
---

网页的导航栏是超链接的集合，可以由此进入不同板块或页面  
网站中的网页是逻辑相关的，可以通过超链接的方式背组织在一起。  
html 不区分大小写  
html 的注释为\<!-- --\>  
html\<a href=https://www.sina.com.cn"\>其中的 https 不能少  
css 样式添加有三种 行内样式，内嵌样式，外部样式表链接样式  
css 行内样式通过 style 属性进行添加，而不是标签。行内样式只对当前元素起作用  
如果设置 table 标签的 border 属性，默认可以看到两层边框线。  
可以使用 border － collapse 属性将表格边框和单元格边框重合在一起显示。  
盒子模型中的盒子，可以是任何页面元素  
定位机制分为三种：普通文档流、浮动、绝对定位和固定定位。  
层定位通过 position 属性来设定  
块状元素 div h1 p ul 等  
浮动元素在文档流中的原位置不会保留。如果父元素的所有子元素都浮动，父元素默认高度坍缩为零  
position 定位，absolute 相对于最近的有定位属性的父元素进行定位，relative 相对于自身原来的位置定位，一般父相子绝  
boxshadow: x 轴偏移量，y 轴偏移量，阴影模糊半径（阴影扩展半径）  
scale() 函数取值可大可小，大于 1 就放大

p35  
进行 3d 变换：transform-style : preserve-3d  
transition :rotateX(60deg): 表示沿着 X 轴进行 3D 变换

p39  
JavaScript 原始类型：数字类型，字符串类型，布尔类型。  
引用类型不是原始类型。

p41 javascript 函数可以改变全局变量的值。

p44 javascript 创建空数组：var arr=new Array()；

p45 将数组中元素转换为字符串，用逗号分隔： String(arr)  
arr.sort() 将所有元素转为字符串再排序  
arr.reverse() 颠倒数组  
arr.splice() 可进行删除、插入、替换操作

p46  
DOM 定义了访问 HTML、XML 的标准，是万维网联盟 W3C 的标准，  
DOM 是 Document Object Model 文档对象模型的缩写（不是浏览器对象模型）  
DOM 查找操作：getElementById()，getElementsByTagName()，getElementsByClassName()，  
element 表示一个元素，查找后返回一个元素。elements 表示多个元素，会返回一个集合。

P47  
DOM 核心：可操作一切结构化文档的 API  
核心 DOM 操作：getAttribute(" 属性名 ") 读取属性值，setAttribute(" 属性值 ",value) 修改属性值，hasAttribute(" 属性名 ") 判断是否有属性值。

P48  
添加元素的步骤：创建空元素，设置关键属性，将元素添加到 dom 树种  
设置关键属性：a.innerHTML="xxx"，a.herf="xxx"  
非关键属性：a.style.opacity="1";  
将元素添加到 DOM 树：appendChild()  
添加元素优化：var frag=document.createDocumentFragment(); frag.appendChild(child); parent.appendChild(frag);

p49  
创建一个空元素：document.createElement(" 元素名 ")

p50  
BOM 大概率不考

p51  
定时器 timer 大概率不考

p52  
JQuery 大概率不考

p53  
Jquery 大概率补考

p54  
JQuery 大概率不考

p55  
HTML5 新特性大概率不考