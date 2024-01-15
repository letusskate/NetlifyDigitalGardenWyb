---
{"dg-publish":true,"permalink":"/3 计算机/软件开发/后端开发/Snow flake数据库/","title":"Snow flake数据库"}
---


## Python Snowflake 安装
- 下载 python 库：  
pip install pysnowflake
- 下面启动 snowflake 服务器端
  - 首先找到 pip 安装目录，命令如下：  
pip show pysnowflake
- ![image1](/img/user/resources/attachments/image1-62.png)
  - 进入路径 c:\users\dell\appdata\roaming\python\python38\Scripts，双击启动 snowflake_start_server.exe；
  - 然后在程序中引入库：  
from snowflake import client
- 在程序中使用如下：  
client.get_guid()
- 另外，如果是使用 conda 环境的话，似乎不用像 pip 那么麻烦找 snowflake_start_server.exe 来启动，直接在 cmd 中执行如下命令即可启动服务器端：  
snowflake_start_server

## snowflake 作用
识别客户端的硬件，为这个硬件生成一个唯一的字符串。以此达到为每个用户生成不同的唯一标识的目的。