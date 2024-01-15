---
{"dg-publish":true,"permalink":"/1 工作与赚钱/科研技巧/论文写作/Latex/latex联动/latex+vscode/","title":"latex+vscode"}
---


## Latex+vscode
### 快捷键
从 tex 到 pdf：Crtl+alt+j  
从 pdf 到 tex：crtl+ 左键 或者 双击  
使得 vscode 中 tex 自动换行：alt+z
### 遇到的问题
#### 无法编译 bib
第一次运行/修改过引用/删除过中间文件/编译出错后，应编译 pdf-bib-pdf-pdf  
其他编译应该用 pdf
#### 百度网盘同步出错
如果把工作区用百度网盘进行同步，会使得经常编译错误，因为无法写入文件，被百度网盘占用。因此应该单列一个地方进行文章编写。
### 网页教程
#### 解释所有配置项的作用
[VS code中Latex Workshop配置语言的详细解释_初八和初九的博客-CSDN博客](https://blog.csdn.net/weixin_43699318/article/details/125693349)
#### 指出一些问题和技巧
[论文写作利器vscode+Latex+vim详细教程 - 知乎 (zhihu.com)](https://zhuanlan.zhihu.com/p/538250782)
#### 注释很全的配置项
[论文神器 VS Code + LaTex + LaTex Workshop_我有两颗糖的博客-CSDN博客](https://blog.csdn.net/qq_41140138/article/details/125966870)
#### 改键、改 pdf 阅读器
[使用VSCode编写LaTeX - 知乎 (zhihu.com)](https://zhuanlan.zhihu.com/p/38178015)
### 我的工作区配置
```
{  

    //vscode 自动换行

    "editor.wordWrap": "on",

  

    // latex-workshop setting

    "latex-workshop.latex.tools": [

        {

            "name": "pdflatex",

            "command": "pdflatex",

            "args": [

                "-synctex=1",

                "-interaction=nonstopmode",

                "-file-line-error",

                "%DOCFILE%"

            ]

        },

        {

            "name": "xelatex",

            "command": "xelatex",

            "args": [

                "-synctex=1",

                "-interaction=nonstopmode",

                "-file-line-error",

                "-pdf",

                "%DOCFILE%"

            ]

        },

        {

            "name": "latexmk",

            "command": "latexmk",

            "args": [

              "-synctex=1",

              "-interaction=nonstopmode",

              "-file-line-error",

              "-pdf",

              "%DOC%"

            ]

        },

        {

            "name": "bibtex",

            "command": "bibtex",

            "args": [

                "%DOCFILE%"

            ]

        }

    ],

  

    // 编译工具顺序

    "latex-workshop.latex.recipes": [

        {

            "name": "pdflatex",

            "tools": [

                "pdflatex"

            ]

        },

        {

            "name": "pdf->bib->pdf->pdf",

            "tools": [

                "pdflatex",

                "bibtex",

                "pdflatex",

                "pdflatex"

            ]

        },

        {

            "name": "xelatex",

            "tools": [

                "xelatex"

            ],

        },

        {

            "name": "xe->bib->xe->xe",

            "tools": [

                "xelatex",

                "bibtex",

                "xelatex",

                "xelatex"

            ]

        }

    ],

  

    // 清除辅助文件

    "latex-workshop.latex.clean.fileTypes": [

        "*.aux",

        "*.bbl",

        "*.blg",

        "*.idx",

        "*.ind",

        "*.lof",

        "*.lot",

        "*.out",

        "*.toc",

        "*.acn",

        "*.acr",

        "*.alg",

        "*.glg",

        "*.glo",

        "*.gls",

        "*.ist",

        "*.fls",

        "*.log",

        "*.fdb_latexmk"

    ],

    "latex-workshop.latex.autoClean.run": "never",

    // "latex-workshop.latex.autoClean.run": "onFailed",

    //自动编译

    "latex-workshop.latex.autoBuild.run": "onSave",

  

    //不显示错误

    // "latex-workshop.message.error.show": false,

  

    //不弹窗显示警告

    "latex-workshop.message.warning.show": false,

  

    //pdf双击回tex

    "latex-workshop.view.pdf.internal.synctex.keybinding": "double-click",

  

    //允许两步操作

    "latex-workshop.bind.altKeymap.enabled": false

}
```