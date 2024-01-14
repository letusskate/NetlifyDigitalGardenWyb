---
aliases: []
created: 2022-02-27 12:10:48+08:00
date created: 2023-07-05T11:13:20+08:00
date modified: 2024-01-13T19:21:07+08:00
dg-publish: true
tags: []
title: vscode配置c语言环境
updated: 2022-02-27 12:21:08+08:00
---

## 网页教程
[VsCode配置C语言环境，看这一篇就够了! - 哔哩哔哩](https://www.bilibili.com/read/cv20698742)

## 自动化配置
选择 c/c++ 运行，右下角会让你添加编译器，从电脑中选中编译器。  
再次运行，会让你选择任务，选择 c/c++，会自动生成文件  
之后 f5 就是 c/c++ 的任务了。
## .vscode 文件夹下放以下三个文件
### tasks.json
```json
{

    "tasks": [

        {

            "type": "cppbuild",

            "label": "C/C++: g++.exe 生成活动文件",

            "command": "c:\\Program Files (x86)\\mingw-w64\\x86_64-8.1.0-release-win32-seh-rt_v6-rev0\\mingw64\\bin\\g++.exe",

            "args": [

                "-fdiagnostics-color=always",

                "-g",

                "${file}",

                "-o",

                "${fileDirname}\\${fileBasenameNoExtension}.exe"

            ],

            "options": {

                "cwd": "c:\\Program Files (x86)\\mingw-w64\\x86_64-8.1.0-release-win32-seh-rt_v6-rev0\\mingw64\\bin"

            },

            "problemMatcher": [

                "$gcc"

            ],

            "group": "build",

            "detail": "调试器生成的任务。"

        }

    ],

    "version": "2.0.0"

}
```

### launch.json
```json
{

    "version": "0.2.0",

    "configurations": [

        {

            "name": "C/C++: g++.exe 生成和调试活动文件",

            "type": "cppdbg",

            "request": "launch",

            "program": "${fileDirname}\\${fileBasenameNoExtension}.exe",

            "args": [],

            "stopAtEntry": false,

            "cwd": "c:\\Program Files (x86)\\mingw-w64\\x86_64-8.1.0-release-win32-seh-rt_v6-rev0\\mingw64\\bin",

            "environment": [],

            "externalConsole": false,

            "MIMode": "gdb",

            "miDebuggerPath": "c:\\Program Files (x86)\\mingw-w64\\x86_64-8.1.0-release-win32-seh-rt_v6-rev0\\mingw64\\bin\\gdb.exe",

            "setupCommands": [

                {

                    "description": "为 gdb 启用整齐打印",

                    "text": "-enable-pretty-printing",

                    "ignoreFailures": true

                },

                {

                    "description": "将反汇编风格设置为 Intel",

                    "text": "-gdb-set disassembly-flavor intel",

                    "ignoreFailures": true

                }

            ],

            "preLaunchTask": "C/C++: g++.exe 生成活动文件"

        }

    ]

}
```

### settings.json
```json
{  

  "C_Cpp.updateChannel": "Insiders",  

  "files.associations": {  

    "stdio.h": "c",  

    "cmath": "cpp",  

    "complex": "cpp",  

    "iostream": "cpp",  

    "ostream": "cpp"  

  },  

  "code-runner.runInTerminal": true,

  

  //以下为大屏显示器设置  

  "editor.fontSize": 18,  

  "window.zoomLevel": 1,

  "C_Cpp.default.compilerPath": "c:\\Program Files (x86)\\mingw-w64\\x86_64-8.1.0-release-win32-seh-rt_v6-rev0\\mingw64\\bin\\g++.exe",

  

}
```