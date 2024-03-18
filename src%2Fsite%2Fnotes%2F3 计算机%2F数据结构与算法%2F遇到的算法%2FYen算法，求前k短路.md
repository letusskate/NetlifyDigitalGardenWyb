---
aliases: []
created: 2023-01-09 14:35:02+08:00
date created: 2023-07-05T11:13:20+08:00
date modified: 2024-01-13T19:21:06+08:00
dg-publish: true
tags: []
title: Yen算法，求前k短路
updated: 2023-07-01 11:16:39+08:00
---

## 相关知识
[Yen 算法\_yen算法\_KZM2008的博客-CSDN博客](https://blog.csdn.net/KZM2008/article/details/5460152)  
[K Shortest Path Routing - 知乎](https://zhuanlan.zhihu.com/p/336140079)
## 网页资源
[基于Yen算法的k最短路径问题的python实现 - 会武术之白猫 - 博客园 (cnblogs.com)](https://www.cnblogs.com/ljy1227476113/p/14779065.html)
## 代码
```
#date:2021-5-17
#author:Linuas
#b站:会武术的白猫
import copy

def Dijkstra(network,s,d):#迪杰斯特拉算法算s-d的最短路径，并返回该路径和代价
    #print("Start Dijstra Path……")
    path=[]#s-d的最短路径
    n=len(network)#邻接矩阵维度，即节点个数
    fmax=9999999
    w=[[0 for i in range(n)]for j in range(n)]#邻接矩阵转化成维度矩阵，即0→max
    book=[0 for i in range(n)]#是否已经是最小的标记列表
    dis=[fmax for i in range(n)]#s到其他节点的最小距离
    book[s-1]=1#节点编号从1开始，列表序号从0开始
    midpath=[-1 for i in range(n)]#上一跳列表
    u=s-1
    for i in range(n):
        for j in range(n):
            if network[i][j]!=0:
                w[i][j]=network[i][j]#0→max
            else:
                w[i][j]=fmax
            if i==s-1 and network[i][j]!=0:#直连的节点最小距离就是network[i][j]
                dis[j]=network[i][j]
    for i in range(n-1):#n-1次遍历，除了s节点
        min=fmax
        for j in range(n):
            if book[j]==0 and dis[j]<min:#如果未遍历且距离最小
                min=dis[j]
                u=j
        book[u]=1
        for v in range(n):#u直连的节点遍历一遍
            if dis[v]>dis[u]+w[u][v]:
                dis[v]=dis[u]+w[u][v]
                midpath[v]=u+1#上一跳更新
    j=d-1#j是序号
    path.append(d)#因为存储的是上一跳，所以先加入目的节点d，最后倒置
    while(midpath[j]!=-1):
        path.append(midpath[j])
        j=midpath[j]-1
    path.append(s)
    path.reverse()#倒置列表
    #print(path)
    #print(midpath)
    #print(dis)
    return path

def return_path_sum(network,path):
    result=0
    for i in range(len(path)-1):
        result+=network[path[i]-1][path[i+1]-1]
    return result

def add_limit(path,s):#path=[[[1,3,4,6],5],[[1,3,5,6],7],[[1,2,4,6],8]
    result=[]
    for item in path:
        if s in item[0]:
            result.append([s,item[0][item[0].index(s)+1]])
    result=[list(r) for r in list(set([tuple(t) for t in result]))]#去重
    return result

def return_shortest_path_with_limit(network,s,d,limit_segment,choice):#limit_segment=[[3,5],[3,4\|3,5],[3,4]]
    mid_net=copy.deepcopy(network)
    for item in limit_segment:
        mid_net[item[0]-1][item[1]-1]=mid_net[item[1]-1][item[0]-1]=0
    s_index=choice.index(s)
    for point in choice[:s_index]:#s前面的点是禁用点
        for i in range(len(mid_net)):
            mid_net[point-1][i]=mid_net[i][point-1]=0
    mid_path=Dijkstra(mid_net,s,d)
    return mid_path

def judge_path_legal(network,path):
    for i in range(len(path)-1):
        if network[path[i]-1][path[i+1]-1]==0:
            return False
    return True

def k_shortest_path(network,s,d,k):
    k_path=[]#结果列表
    alter_path=[]#备选列表
    kk=Dijkstra(network,s,d)
    k_path.append([kk,return_path_sum(network,kk)])
    while(True):
        if len(k_path)==k:break
        choice=k_path[-1][0]
        for i in range(len(choice)-1):
            limit_path=[[choice[i],choice[i+1\|choice[i],choice[i+1]]]#限制选择的路径
            if len(k_path)!=1:
                limit_path.extend(add_limit(k_path[:-1],choice[i]))
            mid_path=choice[:i]
            mid_res=return_shortest_path_with_limit(network,choice[i],d,limit_path,choice)
            if judge_path_legal(network,mid_res):
                mid_path.extend(mid_res)
            else:
                continue
            mid_item=[mid_path,return_path_sum(network,mid_path)]
            if mid_item not in k_path and mid_item not in alter_path:
                alter_path.append(mid_item)
        if len(alter_path)==0:
            print("总共只有{}条最短路径！".format(len(k_path)))
            return k_path
        alter_path.sort(key=lambda x:x[-1])
        x=alter_path[0][-1]
        y=len(alter_path[0][0])
        u=0
        for i in range(len(alter_path)):
            if alter_path[i][-1]!=x:
                break
            if len(alter_path[i][0])<y:
                y=len(alter_path[i][0])
                u=i
        k_path.append(alter_path[u])
        alter_path.pop(u)
    for item in k_path:
        print(item)
    return k_path

network=[[0,3,2,0,0,0],
        [3,0,1,4,0,0],
        [2,1,0,2,3,0],
        [0,4,2,0,2,1],
        [0,0,3,2,0,2],
        [0,0,0,1,2,0]]
k_shortest_path(network,1,6,10)
```

## PPT
![image1](/img/user/resources/attachments/image1-37 1.png)

![image2](/img/user/resources/attachments/image2-18 1.png)

![image3](/img/user/resources/attachments/image3-10.png)

![image4](/img/user/resources/attachments/image4-7 1.png)

![image5](/img/user/resources/attachments/image5-4 1.png)

![image6](/img/user/resources/attachments/image6-4.png)

![image7](/img/user/resources/attachments/image7-2 1.png)

![image8](/img/user/resources/attachments/image8-2 1.png)

![image9](/img/user/resources/attachments/image9-2 1.png)

![image10](/img/user/resources/attachments/image10-2 1.png)