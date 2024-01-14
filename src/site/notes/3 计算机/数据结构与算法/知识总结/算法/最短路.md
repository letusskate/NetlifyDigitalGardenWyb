---
aliases: []
date created: 2023-08-26T20:55:17+08:00
date modified: 2024-01-13T19:21:09+08:00
dg-publish: true
tags: []
title: 最短路
---

floyd 可以有负权边，不能有负权环。  
dijkstra 不能有负权边。
## bellman-ford
```cpp
#include <iostream>
#include<fstream>
#define INF 99999999
using namespace std;

int main()
{
	int dis[10], bak[10], i, k, n, m, u[10], v[10], w[10], check, flag;
	ifstream readFile("negative_weight.txt");
	readFile >> n >> m;
	for (i = 1; i <= m; i++) {
		readFile >> u[i] >> v[i] >> w[i];
	}
	//初始化dis数组，代表源点到其他顶点的初始路程
	for (i = 1; i <= n; i++) {
		dis[i] = INF;
	}
	dis[1] = 0; //一开始只有源点是可知的，其余的顶点都是未知
	//Bellman-Ford算法核心代码
	for (k = 1; k <= n - 1; k++) {//最多对所有边执行n-1次松弛操作
		//将dis数组备份至bak数组
		for (i = 1; i <= n; i++) {
			bak[i] = dis[i];
		}
		for (i = 1; i <= m; i++) {//对每条边执行松弛
			if (dis[v[i]] > dis[u[i]] + w[i])
				dis[v[i]] = dis[u[i]] + w[i];
		}
		//松弛完成后检测dis数组是否有更新
		check = 0;
		for (i = 1; i <= n; i++) {
			if (dis[i] != bak[i]) check = 1;
		}
		if (check == 0) break;//如果数组不再更新就退出多余循环
	}

	//检测是否有负权值回路,回路，回路
	flag = 0;
	for (i = 1; i <= m; i++) {
		if (dis[v[i]] > dis[u[i]] + w[i]) flag = 1; // 如果还能继续松弛，代表有负权值回路
	}
	if (flag == 1)
		cout << "存在负权值回路\n";
	for (i = 1; i <= n; i++) {
		cout.width(3);
		cout << dis[i];
	}
	cout << endl;
	readFile.close();
	system("pause");
	return 0;
}
```

## 相关教程
[路径规划算法及C++实现（Floyd、Dijkstra、Bellman-ford algorithm） - 知乎](https://zhuanlan.zhihu.com/p/432674874)