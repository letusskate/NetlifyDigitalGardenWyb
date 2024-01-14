---
aliases: []
created: 2021-01-10 20:13:51+08:00
date created: 2023-07-05T11:13:20+08:00
date modified: 2024-01-13T19:21:08+08:00
dg-publish: true
tags: []
title: 第九章测试题 20210110
updated: 2021-01-15 16:08:31+08:00
---

## 做题不确定
### 第一次

1

在散列存储中，装填因子 a 的值越大，则 ().（3.8 分）
- A、  
  [越大则需要的存储空间越大](javascript:void(0);)
- B、  
  [存取元素时发生冲突的可能性就越大](javascript:void(0);)
- C、  
  [存取元素时发生冲突的可能性就越小](javascript:void(0);)
- D、  
  [跟装填因子无关](javascript:void(0);)  
B，装填因子越大，就是”a=装入元素/全部空间“越大，说明装的越满，越容易冲突

2

在对查找表的查找过程中，若被查找的数据元素不存在，则把该数据元素插到集合中，这种方式主要适合于（）。（3.8 分）
- A、  
  [动态查找表](javascript:void(0);)
- B、  
  [两种表都不适合](javascript:void(0);)
- C、  
  [静态查找表和动态查找表](javascript:void(0);)
- D、  
  [静态查找表](javascript:void(0);)  
A。

3

已知一个有序表为（11，22，33，44，55，66，77，88，99），则折半查找 55 需要比较（）次。（3.8 分）
- A、  
  [1](javascript:void(0);)
- B、  
  [3](javascript:void(0);)
- C、  
  [4](javascript:void(0);)
- D、  
  [2](javascript:void(0);)  
A。下标 min+max/2 下取整

4

设一组初始记录关键字序列为 (13，18，24，35，47，50，62，83，90，115，134),则利用二分法查找关键字 90 需要比较的关键字个数为（）。（3.8 分）
- A、  
  [3](javascript:void(0);)
- B、  
  [2](javascript:void(0);)
- C、  
  [4](javascript:void(0);)
- D、  
  [1](javascript:void(0);)  
B。下标 min+max/2 下取整

5

根据一组记录（56，42，50，64，48）依次插入结点生成一棵 AVL 树，当插入到值为（）的结点时需要进行旋转调整。（3.8 分）
- A、  
  [56](javascript:void(0);)
- B、  
  [42](javascript:void(0);)
- C、  
  [50](javascript:void(0);)
- D、  
  [64](javascript:void(0);)  
C，左子树 - 右子树高度差大于 1

6

判定在有序表 R\[0..19\] 上进行二分检索，则检索成功的平均检索次数为（）。（3.8 分）
- A、  
  [3](javascript:void(0);)
- B、  
  [10](javascript:void(0);)
- C、  
  [3.7](javascript:void(0);)
- D、  
  [5.2](javascript:void(0);)  
D。但我感觉不是 log2 20

8

若根据查找表建立长度为 m 的散列表，采用线性探测法处理冲突，假定对一个元素第一次计算的散列地址为 d，若一直发生冲突，那么第 3 次计算其散列地址为（）。（3.8 分）
- A、  
  [(d-1)%m](javascript:void(0);)
- B、  
  [d+1](javascript:void(0);)
- C、  
  [(d+1)/m](javascript:void(0);)
- D、  
  [(d+1)%m](javascript:void(0);)  
D，根据选择技巧选的，多学

9

判定在有序表 R\[0..19\] 上进行二分检索，则比较 2 次检索成功的结点数为（）。（3.8 分）
- A、  
  [2](javascript:void(0);)
- B、  
  [1](javascript:void(0);)
- C、  
  [3](javascript:void(0);)
- D、  
  [4](javascript:void(0);)  
C，不确定

13

设二叉排序树的高度为 h，总结点数为 n，则在该树中查找关键字 key 最多需要比较（）次。

（3.8 分）
- A、  
  [logn](javascript:void(0);)
- B、  
  [n](javascript:void(0);)
- C、  
![image1](/img/user/resources/attachments/image1-53.png)
- D、  
![image2](/img/user/resources/attachments/image2-28.png)

D。看不懂 A 是啥

14

在顺序储存的线性表 R\[0..29\] 上进行进行分块检索（设分为 5 块）的平均检索长度为（），假设索引部分用顺序查找。

（3.8 分）
- A、  
  [11](javascript:void(0);)
- B、  
  [6.5](javascript:void(0);)
- C、  
  [5](javascript:void(0);)
- D、  
  [6](javascript:void(0);)  
B。我猜 3.5+3

15

散列法存储的基本思想是由 () 决定数据的存储地址。（3.8 分）
- A、  
  [关键字的值](javascript:void(0);)
- B、  
  [关键字的冲突量](javascript:void(0);)
- C、  
  [关键字的个数](javascript:void(0);)
- D、  
  [哈希函数](javascript:void(0);)  
**A。蒙的**

16

假定对长度 n=50 的有序表进行折半查找，则对应的判定树高度为（）（3.8 分）
- A、  
  [6](javascript:void(0);)
- B、  
  [4](javascript:void(0);)
- C、  
  [3](javascript:void(0);)
- D、  
  [5](javascript:void(0);)  
A。蒙的

18

折半查找有序表（4，6，10，12，20，30，50，70，88，100）。若查找表中元素 58，则它将依次与表中（）比较大小，查找结果是失败。（3.8 分）
- A、  
  [30，88，70，50](javascript:void(0);)
- B、  
  [30，88，50](javascript:void(0);)
- C、  
  [20，50](javascript:void(0);)
- D、  
  [20，70，30，50](javascript:void(0);)  
D，前面短

20

设一组初始记录关键字序列为 (20，12，42，31，18，14，28)，则根据这些记录关键字构造的二叉排序树的平均查找长度是（）。（3.8 分）
- A、  
  [4](javascript:void(0);)
- B、  
  [3.5](javascript:void(0);)
- C、  
  [20/7](javascript:void(0);)
- D、  
  [19/7](javascript:void(0);)  
C。我算的是 3

22

折半搜索与二叉搜索树的时间性能

（3.8 分）
- A、  
  [有时不相同](javascript:void(0);)
- B、  
  [相同](javascript:void(0);)
- C、  
  [完全不同](javascript:void(0);)
- D、  
  [数量级都是](javascript:void(0);)  
![image3](/img/user/resources/attachments/image3-17.png)

D，不确定

### 第二次
11

假定对线性表 R\[0..59\] 进行分块检索。共分 10 块，每块长度等于 6。若假定检索索引表和块均用顺序检索的方法，则检索每个元素的平均检索长度为 ()。（3.8 分）
- A、  
  [7](javascript:void(0);)
- B、  
  [10](javascript:void(0);)
- C、  
  [9](javascript:void(0);)
- D、  
  [8](javascript:void(0);)  
C。我猜 11/2+7/2=9

14

当装填因子一定时，采用链地址法解决冲突比采用开放定址法处理冲突的平均检索长度要（）。（3.8 分）
- A、  
  [长](javascript:void(0);)
- B、  
  [短](javascript:void(0);)
- C、  
  [使用频率高得多](javascript:void(0);)
- D、  
  [不可控制一些](javascript:void(0);)  
B，刚才好像隐隐看到

15

在数据的存放无规律而言的线性表中进行检索的最佳方法是（）。（5.0 分）
- A、  
  [哈希查找](javascript:void(0);)
- B、  
  [顺序查找](javascript:void(0);)
- C、  
  [索引查找](javascript:void(0);)
- D、  
  [二分查找](javascript:void(0);)  
A。蒙的

19

二分法查找的判定树（）。（3.8 分）
- A、  
  [既是二叉排序树又是理想平衡树](javascript:void(0);)
- B、  
  [是一个满二叉树](javascript:void(0);)
- C、  
  [是一个完全二叉树](javascript:void(0);)
- D、  
  [是n个结点构成的二叉树中高度最高的树](javascript:void(0);)  
A，总结的到位

### 第三次
1

下述几种排序方法中，要求内存量最大的是（）。（3.8 分）
- A、  
  [插入排序](javascript:void(0);)
- B、  
  [快速排序](javascript:void(0);)
- C、  
  [选择排序](javascript:void(0);)
- D、  
  [归并排序](javascript:void(0);)  
D。百度说的，插入 O(1)，快速 O(logn)，选择 O(1)，归并 O(n)

3

顺序查找法适合于存储结构为（）的线性表。（3.8 分）
- A、  
  [索引存储](javascript:void(0);)
- B、  
  [散列存储](javascript:void(0);)
- C、  
  [压缩存储](javascript:void(0);)
- D、  
  [顺序存储或单链表存储](javascript:void(0);)  
D。可我总觉得 B 也可以，但实际上不好

10

当装填因子一定时，采用链地址法解决冲突比采用开放定址法处理冲突的平均检索长度要（）。（3.8 分）
- A、  
  [不可控制一些](javascript:void(0);)
- B、  
  [长](javascript:void(0);)
- C、  
  [短](javascript:void(0);)
- D、  
  [使用频率高得多](javascript:void(0);)  
C。不确定

12

如果要求一个线性表既能较快的查找，又能适应动态变化的要求，可以采用（）查找方法。（3.8 分）
- A、  
  [分块](javascript:void(0);)
- B、  
  [顺序](javascript:void(0);)
- C、  
  [散列](javascript:void(0);)
- D、  
  [折半](javascript:void(0);)  
A。复习题说 A

16

对有 n 个记录的表按记录键值有序的顺序建立二叉树，在这种情况下，其平均查找长度的量级为（）

（3.8 分）
- A、  
  [O(n)](javascript:void(0);)
- B、  
  [O(1)](javascript:void(0);)
- C、  
![image4](/img/user/resources/attachments/image4-14.png)
- D、  
![image3](/img/user/resources/attachments/image3-17.png)

D。好奇怪的问题

17

在散列查找中，平均查找长度主要与（）有关。（3.8 分）
- A、  
  [散列元素个数](javascript:void(0);)
- B、  
  [处理冲突方法](javascript:void(0);)
- C、  
  [散列表长度](javascript:void(0);)
- D、  
  [装填因子](javascript:void(0);)  
D，复习题答案

### 第四次
1

对线性表（18，25，63，50，42，32，90）进行散列存储时，若选用 H=key%9 作为哈希函数，散列地址为 5 的元素有 () 个。（3.8 分）
- A、  
  [6](javascript:void(0);)
- B、  
  [7](javascript:void(0);)
- C、  
  [2](javascript:void(0);)
- D、  
  [3](javascript:void(0);)  
C，这题没有 1 这个选项

2

在分块查找方法中，查找的顺序是（）（3.8 分）
- A、  
  [先排序，再查找索引](javascript:void(0);)
- B、  
  [首先查找块，然后再查找相应的索引](javascript:void(0);)
- C、  
  [首先查找索引，然后再查找相应的块](javascript:void(0);)
- D、  
  [先排序，再查找块](javascript:void(0);)  
B。注意一下

8

假定检索有序表 R\[0..11\] 中每个元素的概率相等。则进行顺序检索的平均检索长度为 ()。（3.8 分）
- A、  
  [6](javascript:void(0);)
- B、  
  [7.5](javascript:void(0);)
- C、  
  [6.5](javascript:void(0);)
- D、  
  [7](javascript:void(0);)  
C 别和折半查找搞混了，这个是跟元素个数有关系，和下标没关系

16

有一个有序表为{1,3,9,12,32,41,45,62,75,77,82,95,100},当折半查找值为 82 的结点时，（）次比较后查找成功。（3.8 分）
- A、  
  [4](javascript:void(0);)
- B、  
  [1](javascript:void(0);)
- C、  
  [2](javascript:void(0);)
- D、  
  [8](javascript:void(0);)  
A。注意这个题，二分之后首节点和末尾节点也必须考虑，别都认为是开区间

26

设一个顺序有序表 A\[1:14\] 中有 14 个元素，则采用二分法查找元素 A\[4\] 的过程中比较元素的顺序为 ()。（3.8 分）
- A、  
  [A\[7\]，A\[5\]，A\[3\]，A\[4\]](javascript:void(0);)
- B、  
  [A\[1\]，A\[2\]，A\[3\]，A\[4\]](javascript:void(0);)
- C、  
  [A\[7\]，A\[3\]，A\[5\]，A\[4\]](javascript:void(0);)
- D、  
  [A\[1\]，A\[14\]，A\[7\]，A\[4\]](javascript:void(0);)  
C。第二次查找，比较的是（1+6）/2 下取整，而不比较 7 了。

### 第五次
1

设有 n 个关键字具有相同的 Hash 函数值，则用线性探测法把这 n 个关键字映射到 HASH 表中需要做（）次线性探测。

（3.8 分）
- A、  
  [n(n-1)/2](javascript:void(0);)
- B、  
  [n(n+1)](javascript:void(0);)
- C、  
  [n(n+1)/2](javascript:void(0);)
- D、  
![image5](/img/user/resources/attachments/image5-10.png)

C。关键字直接插入要做 1 次探测。所以类推 n 个关键词要做 0+1+2+...+(n-1)+n=n\*(n+1)/2 答案是 C

## 我的错题
### 第一次
6

判定在有序表 R\[0..19\] 上进行二分检索，则检索成功的平均检索次数为（）。（3.8 分）

**0.0**分
- A、  
  [3](javascript:void(0);)
- B、  
  [10](javascript:void(0);)
- C、  
  [3.7](javascript:void(0);)
- D、  
  [5.2](javascript:void(0);)  
我的答案：D

正确：C

1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20

1

2 2

3 3 3 3

4 4 4 4 4 4 4 4

5 5 5 5 5

总共比较次数 bai 为：1 +2\*2 + 4\*3 + 8\*4+ 5\*5 = 74

平均长度是 74 /20 =3.7

8

若根据查找表建立长度为 m 的散列表，采用线性探测法处理冲突，假定对一个元素第一次计算的散列地址为 d，若一直发生冲突，那么第 3 次计算其散列地址为（）。（3.8 分）

**0.0**分
- A、  
  [(d-1)%m](javascript:void(0);)
- B、  
  [d+1](javascript:void(0);)
- C、  
  [(d+1)/m](javascript:void(0);)
- D、  
  [(d+1)%m](javascript:void(0);)  
我的答案：

正确：我不知道

感觉是错题

9

判定在有序表 R\[0..19\] 上进行二分检索，则比较 2 次检索成功的结点数为（）。（3.8 分）

**0.0**分
- A、  
  [2](javascript:void(0);)
- B、  
  [1](javascript:void(0);)
- C、  
  [3](javascript:void(0);)
- D、  
  [4](javascript:void(0);)  
我的答案：C

正确：A

只看第二次。

13

设二叉排序树的高度为 h，总结点数为 n，则在该树中查找关键字 key 最多需要比较（）次。

（3.8 分）

**0.0**分
- A、  
  [logn](javascript:void(0);)
- B、  
  [n](javascript:void(0);)
- C、  
![image1](/img/user/resources/attachments/image1-53.png)
- D、  
![image2](/img/user/resources/attachments/image2-28.png)

我的答案：

正确：B

变成单链了，太惨了。百度查答案，她说相信自己哈哈哈哈

20

设一组初始记录关键字序列为 (20，12，42，31，18，14，28)，则根据这些记录关键字构造的二叉排序树的平均查找长度是（）。（3.8 分）

**0.0**分
- A、  
  [4](javascript:void(0);)
- B、  
  [3.5](javascript:void(0);)
- C、  
  [20/7](javascript:void(0);)
- D、  
  [19/7](javascript:void(0);)  
我的答案：

正确：D

计算错误。1\*1+2\*2+3\*2+4\*2=19

22

折半搜索与二叉搜索树的时间性能

（3.8 分）

**0.0**分
- A、  
  [有时不相同](javascript:void(0);)
- B、  
  [相同](javascript:void(0);)
- C、  
  [完全不同](javascript:void(0);)
- D、  
  [数量级都是](javascript:void(0);)  
![image3](/img/user/resources/attachments/image3-17.png)

我的答案：D

正确答案：A

二叉搜索树就是二叉排序树

23

对于长度为 n 的线性表，若采用分块查找（假定总块数和每块长度均接近根号 n），则时间复杂度为（）。

（3.8 分）

**0.0**分
- A、  
![image3](/img/user/resources/attachments/image3-17.png)
- B、  
![image6](/img/user/resources/attachments/image6-10.png)
- C、  
  [O(n)](javascript:void(0);)
- D、  
![image7](/img/user/resources/attachments/image7-6.png)

我的答案：A

正确：B

当时没时间做了，分块查找，O(根 n/2+ 根 n/2)

24

判定在有序表 R\[0..19\] 上进行二分检索，则比较 3 次检索成功的结点数为（）。

（3.8 分）

**0.0**分
- A、  
  [3](javascript:void(0);)
- B、  
  [1](javascript:void(0);)
- C、  
  [2](javascript:void(0);)
- D、  
  [4](javascript:void(0);)  
我的答案：A

正确：D

当时没时间做了，仅仅是第三次

25

对于顺序存储的有序表（5，12，20，26，37，42，46，50，64），若采用折半查找，则查找元素 26 的查找长度为（）。（3.8 分）

**0.0**分
- A、  
  [5](javascript:void(0);)
- B、  
  [2](javascript:void(0);)
- C、  
  [4](javascript:void(0);)
- D、  
  [3](javascript:void(0);)  
我的答案：A

正确：C

当时没时间做了，注意是（low+high)/2 下取整

26

已知一个有序表为（13，18，24，35，47，50，62，83，90，115，134），当二分法查找值为 90 的元素时，检索成功的比较次数为 ()。（3.8 分）

**0.0**分
- A、  
  [1](javascript:void(0);)
- B、  
  [3](javascript:void(0);)
- C、  
  [4](javascript:void(0);)
- D、  
  [2](javascript:void(0);)  
我的答案：A

正确：D

当时没时间做了。

### 第二次
15

在数据的存放无规律而言的线性表中进行检索的最佳方法是（）。（5.0 分）

**0.0**分
- A、  
  [哈希查找](javascript:void(0);)
- B、  
  [顺序查找](javascript:void(0);)
- C、  
  [索引查找](javascript:void(0);)
- D、  
  [二分查找](javascript:void(0);)  
我的答案：A

正确答案：B

散列不算没规律！索引查找就是分块查找

### 第三次
16

对有 n 个记录的表按记录键值有序的顺序建立二叉树，在这种情况下，其平均查找长度的量级为（）

（3.8 分）

**0.0**分
- A、  
  [O(n)](javascript:void(0);)
- B、  
  [O(1)](javascript:void(0);)
- C、  
![image4](/img/user/resources/attachments/image4-14.png)
- D、  
![image3](/img/user/resources/attachments/image3-17.png)

我的答案：D

正确答案：A

不是建立二叉排序树，而是有序的建立二叉树，而且。。二叉排序树也不一定是 log

### 第四次
2

在分块查找方法中，查找的顺序是（）（3.8 分）

**0.0**分
- A、  
  [先排序，再查找索引](javascript:void(0);)
- B、  
  [首先查找块，然后再查找相应的索引](javascript:void(0);)
- C、  
  [首先查找索引，然后再查找相应的块](javascript:void(0);)
- D、  
  [先排序，再查找块](javascript:void(0);)  
我的答案：B

正确答案：C

先找索引表，定位到那个快，之后在块内查找

### 第五次
25

在二叉排序树中插入一个结点的时间复杂度为（）。

（3.8 分）

**0.0**分
- A、  
  [O(n)](javascript:void(0);)
- B、  
![image3](/img/user/resources/attachments/image3-17.png)
- C、  
![image7](/img/user/resources/attachments/image7-6.png)
- D、  
  [O(1)](javascript:void(0);)  
我的答案：B

答案：A

二叉排序树插入节点的时间复杂度在 logn 到 n 之间

## 真的错题
### 第一次
8

若根据查找表建立长度为 m 的散列表，采用线性探测法处理冲突，假定对一个元素第一次计算的散列地址为 d，若一直发生冲突，那么第 3 次计算其散列地址为（）。（3.8 分）

**0.0**分
- A、  
  [(d-1)%m](javascript:void(0);)
- B、  
  [d+1](javascript:void(0);)
- C、  
  [(d+1)/m](javascript:void(0);)
- D、  
  [(d+1)%m](javascript:void(0);)  
我的答案：

正确：A

感觉是错题

### 第五次
25

在二叉排序树中插入一个结点的时间复杂度为（）。

（3.8 分）

**0.0**分
- A、  
  [O(n)](javascript:void(0);)
- B、  
![image3](/img/user/resources/attachments/image3-17.png)
- C、  
![image7](/img/user/resources/attachments/image7-6.png)
- D、  
  [O(1)](javascript:void(0);)  
我的答案：B

答案：A

二叉排序树插入节点的时间复杂度在 logn 到 n 之间