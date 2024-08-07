---
{"dg-publish":true,"permalink":"/3 计算机/计算机网络/硬件与硬件编程/vivado_vitis/Vitis hls介绍/","title":"Vitis hls介绍"}
---

## 介绍视频
[RTL与HLS强强联合打造FPGA新开发之路 | 电子创新网赛灵思社区](https://xilinx.eetrend.com/blog/2023/100572027.html)  
[使用网络实例比较FPGA RTL与HLS C/C++的区别 | 电子创新网赛灵思社区](https://xilinx.eetrend.com/content/2021/100114969.html)

## 相关视频
[HLS教程第1课：软件工程师该怎么了解FPGA架构？\_哔哩哔哩\_bilibili](https://www.bilibili.com/video/BV1BQ4y1N78x/)
## 什么是 Vitis HLS
Vitis HLS 是 Xilinx 公司 Vivado 套件的一个组件，可以将优化过的 C，C++ 以及 System C 转换成 RTL 代码（是 HDL 的一种）的软件 1。它可以通过它，用 C 和 C++ 建立和封装一个 IP 核 2。Vitis HLS 给用户提供了非常方便创建新 Solution 的接口 3。
### 什么是 HLS
高层次综合（HLS）是一种将高级语言代码转换为硬件描述的技术。HLS 设计是指使用高层次综合技术进行 FPGA 设计的过程。它可以将 C、C++ 或 SystemC 等高级语言代码转换为硬件描述，从而使设计人员能够更快地进行 FPGA 设计。使用 HLS 设计，设计人员可以更快地进行 FPGA 设计，并且可以在不了解硬件描述语言（HDL）的情况下进行 FPGA 设计。

## 什么是 Vivado 套件
Vivado 套件是 Xilinx 公司的一款 FPGA 设计套件，可以实现 FPGA 的一整套流程，编程、仿真、分析、验证等等 1。它包括高度集成的设计环境和新一代从系统到 IC 级的工具，这些均建立在共享的可扩展数据模型和通用调试环境基础上 2。Vivado 工具把各类可编程技术结合在一起，能够扩展多达 1 亿个等效 ASIC 门的设计 2。

## 什么是 FPGA 设计
FPGA 设计套件是一种用于 FPGA 设计的软件工具，它可以实现 FPGA 的一整套流程，编程、仿真、分析、验证等等 1。FPGA 是 Field Programmable Gate Array 的缩写，是一种可编程逻辑器件，它由大量的逻辑门单元组成，这些逻辑单元是可以在任何地方随时进行组装的 2。FPGA 设计套件可以帮助开发人员更快地完成 FPGA 设计 3。
### FPGA 的应用
FPGA 设计的应用场景非常广泛，主要是在电子产品设计中 1。FPGA 可以用于通讯、视频、信息处理等领域，开发出满足行业需要并能被行业客户接受的产品 2。FPGA 因为具备接口、控制、功能 IP、内嵌 CPU 等特点，有条件实现一个构造简单、固化程度高、功能全面的系统，产品设计以实现产品功能为主要目的 1。  
FPGA 是一种可编程逻辑器件，它可以通过硬件连线逻辑来实现功能，因此在速度及应用灵活性方面还是有一定优势的 1。FPGA 的本质是一种芯片，可以实现数字电路功能，如 CPU，GPU，NPU 等这些 2。FPGA 的应用场景非常广泛，主要是在电子产品设计中 3。
### FPGA 与 CPU
FPGA 可以实现 CPU 的功能，但是 FPGA 和 CPU 的运行方式不同。CPU 是具有冯诺依曼结构的固定电路，这种结构擅长做指令调度，因此它可以运行软件，即软件可编程。而 FPGA 逻辑电路结构是可变的，是可以随时定义的，这就是硬件可编程的真意 12。
### 我的理解
FPGA 是一种比 cpu 更底层的硬件，可以用它实现 cpu 的功能，但是 cpu 的指令是固定的，FPGA 的指令是可以随时变化的，我今天想实现一个 CPU，明天也能用同一块芯片改成 GPU