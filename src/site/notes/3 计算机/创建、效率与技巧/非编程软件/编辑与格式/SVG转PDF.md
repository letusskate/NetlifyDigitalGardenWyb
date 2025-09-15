---
{"dg-publish":true,"permalink":"/3 计算机/创建、效率与技巧/非编程软件/编辑与格式/SVG转PDF/","title":"SVG转PDF"}
---


## inkscape
[Draw Freely | Inkscape](https://inkscape.org/)  
Inkscape 打开文件  
文件 - 导出 -pdf
### 批量
[Site Unreachable](https://zhuanlan.zhihu.com/p/144722704?utm_id=0)  
bat 文件代码
```
@echo off&setlocal EnableDelayedExpansion
color 0a
echo %date% %time%
echo convert svg to pdf now......
set a=0
for %%i in (*.svg) do (
    echo    %%i  --  %%~ni.pdf 
    inkscape --export-filename=%%~ni.pdf i in (*.svg) do (
    echo    %%i  --  %%~ni.pdf 
::inkscape --export-filename=%%~ni.pdf %%i
    inkscape --export-pdf-version=1.4 -o %%~ni.pdf %%i
    set /a a+=1
)
echo convert count:%a%
pause

```
### inkscape 导出问题
[svg - Inkscape "PDF + Latex" export - Stack Overflow](https://stackoverflow.com/questions/29975786/inkscape-pdf-latex-export/41110512#41110512)  
把所有文字设置在最上方。

>I worked around this by putting all the text in my drawing at the top

> select `text` and then `Object -> Raise to top`

>_Inkscape_ only generates the separate pages if the text is below another object.
#### 20250522 1.4.2 版本的 inkscape 没事了

### inkscape 系统问题
linux 和 windows 打开的 svg 很可能格式不一样，因此最好在 linux 生成就在 linux 转化为 pdf，windows 生成在 linux 转 pdf 可能出问题。
### inkscape 导出 pdf 不正确
解决方法：新建画布，把 svg 拖进去，作为嵌入对象不可编辑，再导出
## draw.io 导出 pdf
选裁剪，缩放 100%，包不包含绘图副本都行。
## adobe 
似乎也可以，没找到用什么软件。
## 在线网站（目前效果最好）
[SVG转PDF转换器 - SVGConverter](https://svgconverter.com/zh/svg-to-pdf)
## 另一个网站
[SVG轉PDF - 在線轉換PDF文件](https://www.aconvert.com/tw/pdf/svg-to-pdf/)
## microsoft 打印
可以用浏览器打开 svg，打印成 pdf，但是清晰度不够
## wps 打印
可以用浏览器打开 svg，选 wps 打印成 pdf，清晰度比 microsoft 打印好一些，但还是不够。

## 通过 wps 文档属性看到的网站或软件导出 pdf 方式
draw.io：pdf-lib (https://github.com/Hopding/pdf-lib)  
inkscape 和在线网站：[cairographics.org](https://cairographics.org/)
