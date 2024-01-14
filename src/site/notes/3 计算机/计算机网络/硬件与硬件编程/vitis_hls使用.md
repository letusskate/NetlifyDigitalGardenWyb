---
aliases: []
date created: 2023-07-20T11:20:38+08:00
date modified: 2024-01-13T19:21:06+08:00
dg-publish: true
tags: []
title: vitis_hls使用
---

## linux 启动 vitis
source settings64.sh  
vitis_hls
### 添加环境变量，可以更快速

## linux 无法启动 vitis_hls
[Xilinx Customer Community](https://support.xilinx.com/s/question/0D52E00006hpRv5SAE/cannot-start-vitis-hls-gui-with-fedora-34?language=en_US)  
[Xilinx Customer Community](https://support.xilinx.com/s/question/0D52E00006hpY4PSAU/vitishls-20202-not-starting-only-splash-screen-visible?language=en_US)  
**BEST SOLUTION**  
Well, that was a ride. I think I fixed it!  
Its rather cryptic: you need to edit one character on the file xilinx/Vitis_HLS/2020.2/common/scripts/autopilot_init.tcl  
Go to line 40, should look like this  
`   1. ----%r&-'%rl%&n$&lt'v-=   `  
Replace the last = with >, should look like  
`   1. ----%r&-'%rl%&n$&lt'v->   `  
That should do. It'd be great if someone can confirm, I did a number of changes on my way that may play a role on it working for me.  
That character decides whether an external java interpreter or a shared library is used to run vitis. I noticed that vitis' java side wont notice tcl is running and will try to launch it again. When loading the java interpreter on the same process the flag that indicates tcl is up is already set.

## linux vitis 无法导出 ip 核
### 解决方式
把日期调为 2021 年，但是会导致无法访问网页，因此调回去之后要重新调回来。  
[Widget](https://support.xilinx.com/s/question/0D52E00006uyTmwSAE/error-impl-21328-failed-to-generate-ip?language=ja)
### 快速方式
启动的时候加入 faketime