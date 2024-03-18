---
aliases: []
created: 2021-01-12 14:52:31+08:00
date created: 2023-07-05T21:38:32+08:00
date modified: 2024-01-13T19:21:09+08:00
dg-publish: true
tags: []
title: 第一章 数据仓库的概念与体系结构
updated: 2021-01-16 19:16:29+08:00
---

## 填空题
1.数据仓库就是一个面向主题的、集成的、相对稳定的、反应历史变化的数据集合（锅）  
3.数据处理通常分成两大类：联机事务处理（OLTP）和联机分析处理 OLAP（锅）

## 简答题
### 13.简述你对数据仓库未来发展趋势的看法。（guo）
答：  
数据仓库技术的发展包括数据抽取、存储管理、数据表现和方法论等方面。  
在数据抽取方面，未来的技术发展将集中在系统集成化方面。它将互连、转换、复制、调度、监控纳入标准化的统一管理，以适应数据仓库本身或数据源可能的变化，使系统更便于管理和维护。  
在数据管理方面，未来的发展将使数据库厂商明确推出数据仓库引擎，作为数据仓库服务器产品与数据库服务器并驾齐驱。在这一方面，带有决策支持扩展的并行关系数据库将最具发展潜力。  
在数据表现方面，数理统计的算法和功能将普遍集成到联机分析产品中，并与 Internet/Web 技术紧密结合。按行业应用特征细化的数据仓库用户前端软件将成为产品作为数据仓库解决方案的一部分。  
数据仓库实现过程的方法论将更加普及，将成为数据库设计的一个明确分支，成为管理信息系统设计的必备。
### 
### 14.请列出 3 种数据仓库产品，并说明其优缺点。（锅）
答：  
（1）IBM 公司提供了一套基于可视化数据仓库的商业智能（BI）解决方案，包括：Visual Warehouse（VW）、Essbase/DB2 OLAP Server 5.0、IBM DB2 UDB，以及来自第三方的前端数据展现工具（如 BO）和数据挖掘工具（如 SAS）。其中，VW 是一个功能很强的集成环境，既可用于数据仓库建模和元数据管理，又可用于数据抽取、转换、装载和调度。Essbase/DB2 OLAP Server 支持“维”的定义和数据装载。Essbase/DB2 OLAP Server 不是 ROLAP（Relational OLAP）服务器，而是一个（ROLAP 和 MOLAP）混合的 HOLAP 服务器，在 Essbase 完成数据装载后，数据存放在系统指定的 DB2 UDB 数据库中。它的前端数据展现工具可以选择 Business Objects 的 BO、Lotus 的 Approach、Cognos 的 Impromptu 或 IBM 的 Query Management Facility；多维分析工具支持 Arbor Software 的 Essbase 和 IBM（与 Arbor 联合开发）的 DB2 OLAP 服务器；统计分析工具采用 SAS 系统。  
（2）Oracle 数据仓库解决方案主要包括 Oracle Express 和 Oracle Discoverer 两个部分。Oracle Express 由四个工具组成：Oracle Express Server 是一个 MOLAP(多维 OLAP) 服务器，它利用多维模型，存储和管理多维数据库或多维高速缓存，同时也能够访问多种关系数据库；Oracle Express Web Agent 通过 CGI 或 Web 插件支持基于 Web 的动态多维数据展现；Oracle Express Objects 前端数据分析工具（目前仅支持 Windows 平台）提供了图形化建模和假设分析功能，支持可视化开发和事件驱动编程技术，提供了兼容 Visual Basic 语法的语言，支持 OCX 和 OLE；Oracle Express Analyzer 是通用的、面向最终用户的报告和分析工具（目前仅支持 Windows 平台）。Oracle Discoverer 即席查询工具是专门为最终用户设计的，分为最终用户版和管理员版。  
在 Oracle 数据仓库解决方案的实施过程中，通常把汇总数据存储在 Express 多维数据库中，而将详细数据存储在 Oracle 关系数据库中，当需要详细数据时，Express Server 通过构造 SQL 语句访问关系数据库。  
（3）Microsoft 将 OLAP 功能集成到 SQL Server 数据库中，其解决方案包括 BI 平台、BI 终端工具、BI 门户和 BI 应用四个部分，如图 1.1。  
① BI 平台是 BI 解决方案的基础，包括 ETL 平台 SQL Server 2005 Integration Service(SSIS)、数据仓库引擎 SQL Server 2005 RDBMS 以及多维分析和数据挖掘引擎 SQL Server 2005 Analysis Service、报表管理引擎 SQL Server 2005 Reporting Service。  
② BI 终端用户工具，用户通过终端用户工具和 Analysis Service 中的 OLAP 服务和数据挖掘服务进行交互来使用多维数据集和数据挖掘模型，终端用户通常可使用预定义报表、交互式多维分析、即席查询、数据可视化、数据挖掘等多种方法。  
③ BI 门户提供了各种不同用户访问 BI 信息的统一入口。BI 门户是一个数据的汇集地，集成了来自不同系统的相关信息。用户可以制定个性化的个人门户，选择和自己相关性最强的数据，提高信息访问和使用的效率。  
④ BI 应用是建立在 BI 平台、BI 终端用户工具和 BI 统一门户这些公共技术手段之上的满足某个特定业务需求的应用，例如零售业务分析、企业项目管理组合分析等。