---
aliases: []
created: 2022-11-11 13:50:46+08:00
date created: 2023-07-05T16:15:59+08:00
date modified: 2024-01-13T19:21:09+08:00
dg-publish: true
tags: []
title: 20221111培训
updated: 2023-01-09 11:18:34+08:00
---

（用的 DEMO1）
## 项目上线
### 1.写 dev.py
From settings.py import \*  
DEBUG=False
### 2.写 docker-composes.yaml
主要配置端口、不同的镜像的需求 [docker](../../../../创建、效率与技巧/编程工具/docker.md)
### 3.写 Dockerfile
配置文件路径，执行命令  
Pip install -r requirements.txt  
把镜像配置完整
### 4.requirements.txt
把需要的插件和版本记录下来。
### 5.ngix 配置

## 项目问题
1.order 的删除问题  
2.ordergoods 的删除问题，商品删除了，订单也不能删除  
3.password 作为密文  
From Django.contrib.auth.hashers import make_password,check_password