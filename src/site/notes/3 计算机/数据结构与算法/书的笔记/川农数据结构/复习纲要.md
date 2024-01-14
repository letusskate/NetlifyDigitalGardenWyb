---
aliases: []
created: 2021-01-13 22:06:19+08:00
date created: 2023-07-05T11:13:20+08:00
date modified: 2024-01-13T19:21:07+08:00
dg-publish: true
tags: []
title: 复习纲要
updated: 2021-01-16 07:56:24+08:00
---

期末考试题型：

选择 40\*1 分 + 判断 10\*1+ 简答 4\*5+ 编程题（3\*10）

考察范围：

第 1 章、第 2 章、第 3 章、第 7 章、第 8 章（基本概念）、第 9 章、第 10 章

问答题：
1.  已知一棵完全二叉树共有 n 个节点,试求:(要求写出求解过程)  
(1) 树的高度;

(2) 叶子节点数:

(3) 单支节点数;

\(4\) 第 3 层第 3 个结点的编号，以及它的孩子结点的编号为什么？（默认根结点的编号为 1）。

2.  在利用链式结构（单链表、双链表、单循环链表及双循环链表）进行数据的访问中，能否从当前节点出发访问到任一节点?为什么?请给出你的分析的理由，描述出单、双链表的结构及对应的循环链表的特点。
3.  请分析在顺序查找、折半查找、分块查找中，若查找元素时以等概论计算，这些查找方案各自的 ASL 为多少？给出结论及求解过程。
4.  对于 n 个顶点的无向图和有向图（均为不带权图），当采用邻接矩阵和邻接表表示时，如何求解以下问题:  
(1) 图中有多少条边；

(2) 任意两个顶点之间 i 和 j 是否有边相连；

(3) 任意一个顶点的度是多少。  
5.  一棵满二叉树，若是操作仅限于进行元素的查找（包括查找孩子结点、双亲结点、兄弟结点），最佳的存储方案是？说明理由。  
6.  在直接插入排序、希尔排序、冒泡排序、简单选择排序、快速排序、堆排序和基数排序方法中  
(1) 不需要进行关键字比较的是哪些?

(2) 关键字比较的次数与记录的初始排列次序无关的是哪些?

(3) 上面各种排序算法的平均时间效率分别为什么？  
7.  将一个顺序表中所有的元素实现逆置，算法的空间复杂度尽量保持为 O(1)，请用文字描述出你的方案。  
含有 n 个结点的 3 叉树的最小高度是多少？  
8.  已知完全二叉树的第 8 层有 8 个节点,则其分支结点数是多少?（请给出求解过程）  
9.  请描述对于线性表的顺序存储和链式存储结构的优缺点。举例说明在什么样的情况下选用顺序存储，什么情况下选用链式结构存储？  
10. 试各举一个实例,简要说明栈和队列在程序设计中所起的作用。

编程题：
1.  能写出顺序表、单链表、双链表、单循环链表、双循环链表、顺序栈、顺序队、链栈、链队的结构体。
2.  写出折半查找的算法，并分析其最好情况、最坏情况及平均情况下的时间复杂度。
3.  写出分块查找的算法，并分析其最好情况、最坏情况及平均情况下的时间复杂度。
4.  写出直接插入排序的算法，并分析其最好情况、最坏情况及平均情况下的时间复杂度。
5.  写出冒泡排序的改进算法，并分析其最好情况、最坏情况及平均情况下的时间复杂度。
6.  写出希尔排序的算法，并分析其最好情况、最坏情况及平均情况下的时间复杂度。

顺序表：  
typedef struct  
{ ElemType data\[MaxSize\];  
int length;  
} SqList;

单链表：  
typedef struct Lnode  
{ ElemType data;  
struct Lnode \*next;  
}LinkNode;

双链表：  
typedef struct Dnode  
{ Elemtype data;  
struct Dnode \*next;  
struct Dnode \*prior;  
}DLinkNode;

单循环链表：  
同单链表  
双循环链表：  
同双链表

顺序栈：  
typedef struct  
{Elemtype data\[MaxSize\];  
int top;  
}SqStack;

顺序队：  
typedef struct  
{ Elemtype data\[MaxSize\];  
int front, rear;  
} SqQueue;

链栈：  
typedef struct linknode  
{ Elemtype data;  
struct linknode \*next;  
} LinkStNode;

链队：  
typedef struct qnode  
{ ElemType data;  
struct qnode \*next;  
} DataNode;  
typedef struct  
{ DataNode \*front;  
DataNode \*rear;  
}LinkQuNode  
折半查找：  
int BinSearch(RecType R\[\],int n,KeyType k)  
{ int low=0,high=n-1,mid;  
while(low\<=high)  
{mid=(low+high)/2;  
if(k==R\[mid\].key)  
return mid+1;  
if(k\<R\[mid\].key)  
high=mid-1;  
else  
low=mid+1;  
}  
return 0;  
}

分块查找：  
int IdxSearch(IdxType I\[\],int b,RecType R\[\],int n,KeyType k)  
{ int s=(n+b-1)/b; //s 每块的个数，n/b 上取整  
int low=0,high=b-1,mid,i;  
while(low\<=high)  
{ mid=(low+high)/2;  
if(I\[mid\].key\>=k)  
high=mid-1;  
else  
low=mid+1;  
}  
//high+1 就是正确的块  
i=I\[high+1\].link;  
while（i\<=I\[high+1\].link+s-1&&R\[i\].key!=k)  
i++;  
if(i\<=I\[high+1\].link+s-1)  
return i+1;//查找成功  
else  
return 0;  
}

直接插入排序：  
void InsertSort(RecType R\[\],int n)  
{ int i,j; RecType tmp;  
for(i=1;i\<n;i++)  
{ if(R\[i\].key\<R\[i-1\].key)  
{tmp=R\[i\];  
j=i-1;  
do //找 R\[i\] 的插入位置  
{ R\[j+1\]=R\[j\]; //将关键字大于 R\[i\].key 的记录后移  
j--;  
} while(j\>=0&&R\[j\].key\>tmp.key);  
R\[j+1\]=tmp; //在 j+1 处插入 R\[j\]  
}  
}  
}

冒泡排序：  
void BubbleSort(RecType R\[\],int n)  
{  
int I,j;  
for(i=0;i\<n-1;i++)  
for(j=n-1;j\>I;j--