---
dg-publish: true
aliases: []
tags: []
title: StaR Breaking the Scalability Limit for RDMA
date created: 2023-11-21T15:30:55+08:00
date modified: 2024-01-14T17:38:47+08:00
---
## 设计思路
通过将状态转移到通信另一端来解决 RDMA 的可扩展性问题。 StaR 利用数据中心应用中的非对称通信模式，让低并发的通信端为高并发的另一端保存状态，从而使瓶颈侧的 RNIC 成为无状态的。  
特别是，经常有一些 RNIC 具有巨大的扇入/扇出，而其他 RNIC 仅保留少量连接。例如，Timestamp Oracle 中的服务器通常需要保持超过 2800 个并发连接，同时由于服务器数量较少，客户端只需要保持少量连接。这种非对称流量模式为我们提供了设计新颖的非对称 RNIC 状态维护机制的绝佳机会。具体来说，我们不维护连接两端的状态。相反，我们可以将双方的连接状态移至只有少量连接的 RNIC 一侧（称为客户端），而让拥有大量连接的另一侧成为无状态。之前已有工作 将这一思想应用于 TCP/IP 协议栈。受他们的启发，我们设计了 StaR 来解决 RDMA 可扩展性问题。

## RNIC 需要用内存维护 QPC 的什么？
### StaR 的 II A
The RC mode provides connected and reliable transmission, but also requires to maintain significant states on the RNIC for each connection. There are three kinds of states an RNIC has to maintain for each RDMA connection2: 1) DMA-related, 2) networking-related and 3) security-related. DMA-related states are used for memory access, including WQE number, user page size, memory table address, etc.. Networking-related states are used for network transmission, including queue pair number (QPN), packet sequence number (PSN), transport timeout, etc.. Security-related states are used for security check, including protection domain (PD), memory region (MR) and memory window (MW), etc.. A typical RDMA implementation requires 256B states for each RDMA connection  
RNIC 必须为每个 RDMA 连接维护三种状态：1) DMA 相关，2) 网络相关，3) 安全相关。 DMA 相关的状态用于内存访问，包括 WQE 号、用户页面大小、内存表地址等。网络相关的状态用于网络传输，包括队列对号（QPN）、数据包序列号（PSN）、传输超时等。安全相关的状态用于安全检查，包括保护域（PD）、内存区域（MR）和内存窗口（MW）等。典型的 RDMA 实现需要每个 RDMA 连接 256B 状态
#### 占多少空间
1. **DMA 相关的状态：**
    
    - WQE 号（假设需要 64 位，即 8 字节）
    - 用户页面大小（假设需要 32 位，即 4 字节）
    - 内存表地址（假设需要 64 位，即 8 字节）
    
    这样 DMA 相关的状态可能占用 20 字节。
    
2. **网络相关的状态：**
    
    - 队列对号 QPN（假设需要 32 位，即 4 字节）
    - 数据包序列号 PSN（假设需要 32 位，即 4 字节）
    - 传输超时等其他相关信息（假设需要 64 位，即 8 字节）
    
    这样网络相关的状态可能占用 16 字节。
    
3. **安全相关的状态：**
    
    - 保护域 PD（假设需要 32 位，即 4 字节）
    - 内存区域 MR（假设需要 32 位，即 4 字节）
    - 内存窗口 MW（假设需要 64 位，即 8 字节）
    
    这样安全相关的状态可能占用 16 字节。
### 另一篇的第 4 页
. A QPC maintains for a QP all its contexts, including the DMA states (e.g., the start and end addresses, read and write pointers of SQ & RQ), and connection states (e.g., expected and next packet sequence numbers, window or rate for congestion control). The QPC size we allocate for each QP is 210 B, so the total size for 10K QPs is 2.0 MB.
#### 占多少空间
1. **DMA 状态信息：**
    
    - 起始地址和结束地址（假设每个地址需要 64 位，即 8 字节 * 2 = 16 字节）
    - SQ（Send Queue）和 RQ（Receive Queue）的读写指针（假设每个指针需要 64 位，即 8 字节 * 4 = 32 字节）
    
    DMA 状态信息可能占用 48 字节。
    
2. **连接状态信息：**
    
    - 期望和下一个数据包序列号（假设每个序号需要 32 位，即 4 字节 * 2 = 8 字节）
    - 拥塞控制中的窗口或速率信息（假设需要 64 位，即 8 字节）
    
    连接状态信息可能占用 16 字节。
## 数据包结构

![](/img/user/resources/attachments/20231121StaR Breaking the Scalability Limit for RDMA.png)
## 总结
### DMA
WQE 号（假设需要 64 位，即 8 字节）  WQE number  
用户页面大小（假设需要 32 位，即 4 字节） user page size  
内存表地址（假设需要 64 位，即 8 字节）memory table address
### 网络相关
队列对号 QPN（假设需要 32 位，即 4 字节）  queue pair number (QPN)  
数据包序列号 PSN（假设需要 32 位，即 4 字节）  packet sequence number (PSN)  
传输超时（假设需要 64 位，即 8 字节）transport timeout
### 安全相关
保护域 PD（假设需要 32 位，即 4 字节）protection domain (PD)  
内存区域 MR（假设需要 32 位，即 4 字节） memory region (MR)  
内存窗口 MW（假设需要 64 位，即 8 字节）memory window (MW)
### 文档
![](/img/user/resources/attachments/20231122StaR Breaking the Scalability Limit for RDMA.png)  
![](/img/user/resources/attachments/20231122StaR Breaking the Scalability Limit for RDMA-1.png)  
![](/img/user/resources/attachments/20231122StaR Breaking the Scalability Limit for RDMA-2.png)