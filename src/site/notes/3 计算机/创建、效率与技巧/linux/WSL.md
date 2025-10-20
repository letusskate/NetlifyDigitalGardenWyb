---
{"dg-publish":true,"permalink":"/3 计算机/创建、效率与技巧/linux/WSL/","title":"WSL"}
---


## 什么是 WSL
Windows Subsystem for Linux 适用于 Linux 的 Windows 子系统。  
开发人员可以在 Windows 计算机上同时访问 Windows 和 Linux 的强大功能。 通过适用于 Linux 的 Windows 子系统 (WSL)，开发人员可以安装 Linux 发行版（例如 Ubuntu、OpenSUSE、Kali、Debian、Arch Linux 等），并直接在 Windows 上使用 Linux 应用程序、实用程序和 Bash 命令行工具，不用进行任何修改，也无需承担传统虚拟机或双启动设置的费用。

## wsl 安装
### windows 官方安装 WSL
[安装 WSL \| Microsoft Learn](https://learn.microsoft.com/zh-cn/windows/wsl/install)  
[安装 WSL \| Microsoft Learn](https://learn.microsoft.com/zh-cn/windows/wsl/install)
### 安装到 d 盘（只能先安装再导出再导入）
```
wsl --list --online
wsl --install -d <DistroName>

wsl --export Ubuntu D:\backup\ubuntu.tar
wsl --unregister <发行版名称>
wsl --import <新发行版名称> <目标路径> <导出的tar文件路径> --version 2
```
#### 查看当前所有 wsl
`wsl --list`
### wsl 升级为 2
[安装 WSL \| Microsoft Learn](https://learn.microsoft.com/zh-cn/windows/wsl/install#upgrade-version-from-wsl-1-to-wsl-2)  
可以先导出再导入，再升级
#### 查看当前 wsl 版本
`wsl --list --verbose`

## wsl 使用教程
### 启动和关闭
```
wsl --distribution Ubuntu2

exit
或者
wsl --terminate Ubuntu2
```
### 重启
```
wsl --shutdown
wsl -t Ubuntu
```
#### wsl 网络重启
```
Restart-Service LxssManager  # 重启 WSL 核心服务
netsh winsock reset  # 重置网络堆栈
```
### wsl 图形界面
[Windows10/11上安装图形用户界面 (GUI)并在 WSL 2 中运行 Ubuntu 22.04\_哔哩哔哩\_bilibili](https://www.bilibili.com/video/BV1AV4y1K7Xe/?spm_id_from=333.337.search-card.all.click&vd_source=20cb3e7c6ad3d64f0eb2d763ff005080)  
[WSL2 Ubuntu GUI 图形用户界面\_哔哩哔哩\_bilibili](https://www.bilibili.com/video/BV1LA411n7BK/?spm_id_from=333.337.search-card.all.click)
#### 图形界面开发环境搭建
[WSL没有图形界面？快速搭建Python和C++开发环境\_哔哩哔哩\_bilibili](https://www.bilibili.com/video/BV1u44y1N78v/?spm_id_from=333.337.search-card.all.click)
### wsl 基本使用
[使用Windows构建高效的Linux开发环境\_哔哩哔哩\_bilibili](https://www.bilibili.com/video/BV1Du4y1q7YJ/?buvid=XY630CE669F34078F341989B1EE06E60B0127&is_story_h5=false&mid=g8UDjEqHIS5oCexxb9oAEQ%3D%3D&p=1&plat_id=116&share_from=ugc&share_medium=android&share_plat=android&share_session_id=f80f4845-05c0-4627-a93c-c4001dc78ba3&share_source=COPY&share_tag=s_i&timestamp=1692548494&unique_k=3ADudyz&up_id=15135791)
### wsl 内使用代理访问外网
[Site Unreachable](https://zhuanlan.zhihu.com/p/23189639475)  
[WSL使用Windows代理最简单的方法\_wsl如何使用本机代理-CSDN博客](https://blog.csdn.net/qq_40931212/article/details/151861282)
#### windows 的设置
代理客户端​**​必须允许局域网连接**
#### 仅在当前 bash 有效
##### 查看主机 IP
```
cat /etc/resolv.conf | grep nameserver | awk '{print $2}'
export WINDOWS_HOST_IP=$(grep -oP '(?<=nameserver\ ).*' /etc/resolv.conf)
```
##### 查看代理端口
从代理软件或 windows 设置中查看
##### 设置代理
```
unset http_proxy https_proxy HTTP_PROXY HTTPS_PROXY ALL_PROXY all_proxy no_proxy NO_PROXY
export http_proxy="http://172.23.174.223:17890" 
export https_proxy="http://172.23.174.223:17890" 
# 如果需要，也可以设置ALL_PROXY 
export ALL_PROXY="http://172.23.174.223:17890"
```

##### 查看效果
```
curl -I https://www.google.com
curl -v https://www.google.com
curl -vvv https://www.google.com 2>&1 | grep -i proxy
# 一行命令看结果
curl --proxy http://202.113.15.2:17890 -I https://www.baidu.com
```

#### 长期有效，但需要 win11+wsl2 使用 .wslconfig
```
[experimental]
autoMemoryReclaim=gradual
networkingMode=mirrored
dnsTunneling=true
firewall=true
autoProxy=true
```
[WSL 中的高级设置配置 \| Microsoft Learn](https://learn.microsoft.com/zh-cn/windows/wsl/wsl-config#main-wsl-settings)
#### 长期有效，灵活
### 高级配置
[WSL 中的高级设置配置 \| Microsoft Learn](https://learn.microsoft.com/zh-cn/windows/wsl/wsl-config)
## wsl 的卸载
[WSL 的基本命令 \| Microsoft Learn](https://learn.microsoft.com/zh-cn/windows/wsl/basic-commands#unregister-or-uninstall-a-linux-distribution)  
`wsl --unregister Ubuntu`  

### wsl 有残余
打开此电脑，搜索 `*.vhdx`  
[如何在Win10/Win11上彻底卸载 WSL\_哔哩哔哩\_bilibili](https://www.bilibili.com/video/BV1BWUxYAEW1/?spm_id_from=333.337.top_right_bar_window_history.content.click)  
[给Windows WSL2瘦身释放硬盘空间减少硬盘占用\_哔哩哔哩\_bilibili](https://www.bilibili.com/video/BV1mh4y1T7Mn/?spm_id_from=333.337.search-card.all.click&vd_source=20cb3e7c6ad3d64f0eb2d763ff005080)

## pycharm 官方使用 WSL
[Configure an interpreter using WSL \| PyCharm Documentation (jetbrains.com)](https://www.jetbrains.com/help/pycharm/using-wsl-as-a-remote-interpreter.html)

## 我的 wsl 配置使用 20251013
```
名称   路径   wsl版本
Ubuntu2  E:\wsl2  是wsl 2
Ubuntu E:\wsl 是wsl 1
```
### 我的配置计划
- [x] 升级 wsl2 目前一个 1 一个 2
- [x] 安装 latex  
- [x] 用 vscode 打开 wsl 里面的工作区
- [ ] 配置代理让 wsl 能上外网
- [x] 编译 latex 成功
### 我的代理（上外网）配置过程
#### 我尝试的代理客户端设置：都没用
1.全局代理  
2.设置 -- 网络 - 代理 - 手动设置代理 - 请勿将代理服务器用于本地（Intranet）地址 取消勾选
#### 对于当前 bash 的配置：我测试这三个代理都不能 curl 百度，ping 能 ping 通，但 curl 和 ping 不一样。
（我的 ip`172.23.174.223  或者 172.22.0.1 或者 202.113.15.2`，代理的端口从 windows 设置 - 网络和 internet- 代理查看，是 `17890`）  这三个 IP 都不行

```
unset http_proxy https_proxy HTTP_PROXY HTTPS_PROXY ALL_PROXY all_proxy no_proxy NO_PROXY
export http_proxy="http://172.23.174.223:17890" 
export https_proxy="http://172.23.174.223:17890" 
# 如果需要，也可以设置ALL_PROXY 
export ALL_PROXY="http://172.23.174.223:17890"
```

```
unset http_proxy https_proxy HTTP_PROXY HTTPS_PROXY ALL_PROXY all_proxy no_proxy NO_PROXY
export http_proxy="http://172.22.0.1:17890" 
export https_proxy="http://172.22.0.1:17890" 
# 如果需要，也可以设置ALL_PROXY 
export ALL_PROXY="http://172.22.0.1:17890"
```

```
unset http_proxy https_proxy HTTP_PROXY HTTPS_PROXY ALL_PROXY all_proxy no_proxy NO_PROXY
export http_proxy="http://202.113.15.2:17890" 
export https_proxy="http://202.113.15.2:17890" 
# 如果需要，也可以设置ALL_PROXY 
export ALL_PROXY="http://202.113.15.2:17890"
```
##### 问题考虑
1.这种当前 bash 配置的过程有问题。配置完可能需要新 bash 才能生效？（错误猜测）  
2.代理有问题，需要允许局域网代理？（已通过 clash verge 设置，后续成功了）
#### 开启局域网代理
##### 【正确能用】wsl1（windows ipconfig 现实的地址）
```
unset http_proxy https_proxy HTTP_PROXY HTTPS_PROXY ALL_PROXY all_proxy no_proxy NO_PROXY

export http_proxy="http://172.23.174.223:7897" 
export https_proxy="http://172.23.174.223:7897" 
export ALL_PROXY="http://172.23.174.223:7897"
```

##### wsl2 （/etc/resolv.conf 中的 nameserver）【后续配置后正确能用】
```
unset http_proxy https_proxy HTTP_PROXY HTTPS_PROXY ALL_PROXY all_proxy no_proxy NO_PROXY

export http_proxy="http://172.22.0.1:7897" 
export https_proxy="http://172.22.0.1:7897" 
export ALL_PROXY="http://172.22.0.1:7897"
```
##### wsl1 的 nameserver（/etc/resolv.conf 中的 nameserver）
```
unset http_proxy https_proxy HTTP_PROXY HTTPS_PROXY ALL_PROXY all_proxy no_proxy NO_PROXY
export http_proxy="http://202.113.15.2:7897" 
export https_proxy="http://202.113.15.2:7897" 
# 如果需要，也可以设置ALL_PROXY 
export ALL_PROXY="http://202.113.15.2:7897"
```
##### 此时的结果
wsl1 能 ping baidu，能 curl baidu 和 google，但是无法 ping google  
我在 wsl 2 中使用同样的配置，能 ping baidu，无法 curl baidu 和 google，也无法 ping google。

windows 也无法 ping 通 google。
##### 我的思考
此时 wsl1 已经正常，就是无法 ping 通，windows 也不行，这是正常的， 因为代理只管 http 而不关注 ICMP。  
此时只需要解决 wsl2 的代理。
#### 针对 wsl2 无法使用
（可能原因：Windows 防火墙/安全策略阻断了来自 WSL 虚拟网段的入站连接，或者代理程序对外部连接在应用层有限制（但从 netstat 看它在所有接口监听，优先怀疑防火墙）。）
##### 诊断问题，查看代理的 7897 是否监听 0.0.0.0
```
PS C:\Windows\system32> netstat -ano | findstr ":7897"
>> Get-NetTCPConnection -LocalPort 7897
  TCP    0.0.0.0:7897           0.0.0.0:0              LISTENING       78168
  TCP    127.0.0.1:7897         127.0.0.1:50247        ESTABLISHED     78168
  TCP    127.0.0.1:7897         127.0.0.1:51662        ESTABLISHED     78168
  TCP    127.0.0.1:7897         127.0.0.1:51695        FIN_WAIT_2      78168
  TCP    127.0.0.1:7897         127.0.0.1:51816        TIME_WAIT       0
  TCP    127.0.0.1:7897         127.0.0.1:51962        FIN_WAIT_2      78168
  TCP    127.0.0.1:7897         127.0.0.1:51974        TIME_WAIT       0
  TCP    127.0.0.1:7897         127.0.0.1:52001        ESTABLISHED     78168
  TCP    127.0.0.1:7897         127.0.0.1:52003        TIME_WAIT       0
  TCP    127.0.0.1:7897         127.0.0.1:52009        TIME_WAIT       0
  TCP    127.0.0.1:7897         127.0.0.1:52026        TIME_WAIT       0
  TCP    127.0.0.1:7897         127.0.0.1:52031        TIME_WAIT       0
  TCP    127.0.0.1:7897         127.0.0.1:52033        TIME_WAIT       0
  TCP    127.0.0.1:7897         127.0.0.1:52035        TIME_WAIT       0
  TCP    127.0.0.1:7897         127.0.0.1:52040        TIME_WAIT       0
  TCP    127.0.0.1:7897         127.0.0.1:52044        ESTABLISHED     78168
  TCP    127.0.0.1:7897         127.0.0.1:52046        FIN_WAIT_2      78168
  TCP    127.0.0.1:7897         127.0.0.1:52051        ESTABLISHED     78168
  TCP    127.0.0.1:7897         127.0.0.1:52058        ESTABLISHED     78168
  TCP    127.0.0.1:7897         127.0.0.1:52060        ESTABLISHED     78168
  TCP    127.0.0.1:7897         127.0.0.1:52062        ESTABLISHED     78168
  TCP    127.0.0.1:50247        127.0.0.1:7897         ESTABLISHED     68880
  TCP    127.0.0.1:51662        127.0.0.1:7897         ESTABLISHED     75532
  TCP    127.0.0.1:51695        127.0.0.1:7897         CLOSE_WAIT      55764
  TCP    127.0.0.1:51962        127.0.0.1:7897         CLOSE_WAIT      53168
  TCP    127.0.0.1:52001        127.0.0.1:7897         ESTABLISHED     75532
  TCP    127.0.0.1:52037        127.0.0.1:7897         TIME_WAIT       0
  TCP    127.0.0.1:52042        127.0.0.1:7897         TIME_WAIT       0
  TCP    127.0.0.1:52044        127.0.0.1:7897         ESTABLISHED     75532
  TCP    127.0.0.1:52046        127.0.0.1:7897         CLOSE_WAIT      68268
  TCP    127.0.0.1:52051        127.0.0.1:7897         ESTABLISHED     75532
  TCP    127.0.0.1:52058        127.0.0.1:7897         ESTABLISHED     66716
  TCP    127.0.0.1:52060        127.0.0.1:7897         ESTABLISHED     53916
  TCP    127.0.0.1:52062        127.0.0.1:7897         ESTABLISHED     66716
  TCP    [::]:7897              [::]:0                 LISTENING       78168
  UDP    0.0.0.0:7897           *:*                                    78168
  UDP    [::]:7897              *:*                                    78168

LocalAddress                        LocalPort RemoteAddress                       RemotePort State       AppliedSetting
------------                        --------- -------------                       ---------- -----       --------------
::                                  7897      ::                                  0          Listen
127.0.0.1                           7897      127.0.0.1                           52003      TimeWait
127.0.0.1                           7897      127.0.0.1                           51962      FinWait2    Internet
127.0.0.1                           7897      127.0.0.1                           52001      Established Internet
127.0.0.1                           7897      127.0.0.1                           52051      Established Internet
127.0.0.1                           7897      127.0.0.1                           51816      TimeWait
127.0.0.1                           7897      127.0.0.1                           52060      Established Internet
127.0.0.1                           7897      127.0.0.1                           52040      TimeWait
127.0.0.1                           7897      127.0.0.1                           50247      Established Internet
127.0.0.1                           7897      127.0.0.1                           52026      TimeWait
127.0.0.1                           7897      127.0.0.1                           52044      Established Internet
127.0.0.1                           7897      127.0.0.1                           52058      Established Internet
127.0.0.1                           7897      127.0.0.1                           52009      TimeWait
127.0.0.1                           7897      127.0.0.1                           52031      TimeWait
127.0.0.1                           7897      127.0.0.1                           52035      TimeWait
127.0.0.1                           7897      127.0.0.1                           52033      TimeWait
127.0.0.1                           7897      127.0.0.1                           52046      FinWait2    Internet
127.0.0.1                           7897      127.0.0.1                           51662      Established Internet
127.0.0.1                           7897      127.0.0.1                           51695      FinWait2    Internet
127.0.0.1                           7897      127.0.0.1                           51974      TimeWait
127.0.0.1                           7897      127.0.0.1                           52062      Established Internet
```
结论：在监听  
大概率是防火墙问题。
##### 防火墙设置
Windows 管理员 PowerShell 添加一个允许 TCP 7897 的入站规则
```
# 添加允许 7897 的入站规则（允许所有配置文件，测试用）
New-NetFirewallRule -DisplayName "Allow proxy 7897 (for WSL2 test)" `
  -Direction Inbound -LocalPort 7897 -Protocol TCP -Action Allow -Profile Any
# 查看是否创建成功
Get-NetFirewallRule -DisplayName "Allow proxy 7897 (for WSL2 test)" | Format-List
```
wsl 2 中测试
```
unset http_proxy https_proxy HTTP_PROXY HTTPS_PROXY ALL_PROXY all_proxy no_proxy NO_PROXY

export http_proxy="http://172.22.0.1:7897" 
export https_proxy="http://172.22.0.1:7897" 
export ALL_PROXY="http://172.22.0.1:7897"
```

`nc -vz 172.22.0.1 7897`

`curl www.google.com`  
成功

###### 关于防火墙安全
```
3. （可选，更细的防火墙策略）只允许来自 WSL 子网的入站 如果你不愿意开放到所有来源，可以先查看 WSL 的网段，然后在 Windows 上只允许这个网段访问 7897。先在 Windows PowerShell 找到 WSL vEthernet 的地址（或者在 WSL2 里用 `ip addr` 看分配给 eth0 的 ip）：
```
###### 如果要撤销
```
netsh interface portproxy delete v4tov4 listenaddress=0.0.0.0 listenport=7897

Get-NetFirewallRule -DisplayName "Allow proxy 7897 (for WSL2 test)" | Remove-NetFirewallRule
```
### 永久配置 wsl1 和 2

#### bashrc 中添加
##### wsl1
```
# 代理设置
# 自动检测 Windows 主机 IP
# WIN_HOST=$(awk '/nameserver/ {print $2; exit}' /etc/resolv.conf)

WIN_HOST=172.23.174.223
PROXY_PORT=7897

# 检查代理端口是否可达
if timeout 1 bash -c "cat < /dev/null > /dev/tcp/$WIN_HOST/$PROXY_PORT" 2>/dev/null; then
    export http_proxy="http://$WIN_HOST:$PROXY_PORT"
    export https_proxy="http://$WIN_HOST:$PROXY_PORT"
    export all_proxy="http://$WIN_HOST:$PROXY_PORT"
else
    unset http_proxy
    unset https_proxy
    unset all_proxy
fi
```
##### wsl2
```
# 代理设置
# 自动检测 Windows 主机 IP
# WIN_HOST=$(awk '/nameserver/ {print $2; exit}' /etc/resolv.conf)

WIN_HOST=172.22.0.1
PROXY_PORT=7897

# 检查代理端口是否可达
if timeout 1 bash -c "cat < /dev/null > /dev/tcp/$WIN_HOST/$PROXY_PORT" 2>/dev/null; then
    export http_proxy="http://$WIN_HOST:$PROXY_PORT"
    export https_proxy="http://$WIN_HOST:$PROXY_PORT"
    export all_proxy="http://$WIN_HOST:$PROXY_PORT"
else
    unset http_proxy
    unset https_proxy
    unset all_proxy
fi
```
### 解决 WSL2 的 DNS 无法解析 github 问题
原因是：
- 你的 WSL2 默认 nameserver（/etc/resolv.conf 中的 172.22.0.1）对 UDP/53 不可达导致 DNS 解析失败；直接改用一个可达的 DNS（例如 8.8.8.8 或 1.1.1.1，或国内 DNS 如 114.114.114.114）并让 WSL 永久使用它，就能解决 git/ssh 的 “Temporary failure in name resolution”。
#### 进一步的原因解释：为什么能 curl google，但 ssh github 就不行？

```
- curl 能通很可能是因为 curl 请求走了你设置的 HTTP(S) 代理（你之前在 WSL 中设置的 `http_proxy`/`https_proxy`），代理服务器代替你去解析并建立与目标站点的连接，所以本地 DNS（/etc/resolv.conf 指向的 172.22.0.1）并不是必须的。  
具体表现：对于 HTTPS，curl 会先连接到代理（TCP 到代理 IP:port），再发出 CONNECT www.google.com:443，代理端负责解析并建立到 [www.google.com](vscode-file://vscode-app/c:/Users/15770/AppData/Local/Programs/Microsoft%20VS%20Code/resources/app/out/vs/code/electron-browser/workbench/workbench.html) 的连接，所以本地不需要能解析 [www.google.com。](vscode-file://vscode-app/c:/Users/15770/AppData/Local/Programs/Microsoft%20VS%20Code/resources/app/out/vs/code/electron-browser/workbench/workbench.html)
- 而 ssh/gitrepo（通过 SSH）默认不会走 `http_proxy`/`https_proxy`，SSH 客户端先在本地解析主机名（本地 DNS），如果本地 DNS（172.22.0.1）不可达，就会报 “Temporary failure in name resolution”。（也就是说 SSH 的名称解析是在本地发生的，不会由 HTTP 代理代替）
```
#### 临时快速测试，重启会被覆盖
wsl2 执行
```
# 备份当前文件（以防万一）
sudo cp /etc/resolv.conf /etc/resolv.conf.wsl.bak

# 临时改为 Google DNS（若你在大陆且 Google DNS 被阻断，可改成 114.114.114.114 或 ISP DNS）
sudo bash -c 'echo "nameserver 8.8.8.8" > /etc/resolv.conf'

# 验证解析能否工作
dig +short ssh.github.com
# 或
nslookup ssh.github.com
# 再试 git 操作
git pull --tags origin main
# 或尝试 ssh
ssh -vT -p 443 git@ssh.github.com
```
#### 永久配置
##### 方案一：改 DNS 服务器为 8.8.8.8（还是有可能被屏蔽）（不采用）
wsl2 执行
```
# 1) 禁止 WSL 自动生成 /etc/resolv.conf
sudo tee /etc/wsl.conf > /dev/null <<'EOF'
[network]
generateResolvConf = false
EOF

# 2) 删除自动生成的 resolv.conf（先保留备份）
sudo rm /etc/resolv.conf
sudo tee /etc/resolv.conf > /dev/null <<'EOF'
# Custom resolv.conf for WSL, add desired nameservers below
nameserver 8.8.8.8
nameserver 1.1.1.1
# 可选再加一个国内 DNS 作为备份，例如
# nameserver 114.114.114.114
EOF

sudo chmod 644 /etc/resolv.conf

# 3) 退出 WSL 并在 Windows PowerShell 中重启所有 WSL 实例（在 Windows 上执行）
#   在管理员或普通 PowerShell 中：
#   wsl --shutdown
# 然后重新打开你的 distro（或在 PowerShell 中运行 'wsl'）
```
##### 方案二：让 SSH 也走代理（最终选择）

###### 代理是 SOCKS5 或支持 SOCKS5
```
Host github.com
  Hostname ssh.github.com
  Port 443
  ProxyCommand nc -X 5 -x 172.22.0.1:7897 %h %p
```

###### 代理是 http proxy（最终选择）
安装软件
```
sudo apt update
sudo apt install -y netcat-openbsd
```

改 `~/.ssh/config`  
```
Host github.com
  Hostname ssh.github.com
  Port 443
  ProxyCommand nc -X connect -x 172.22.0.1:7897 %h %p
```

或者  

安装软件
```
sudo apt update
sudo apt install -y corkscrew
```
改 `~/.ssh/config`
```
Host github.com
  Hostname ssh.github.com
  Port 443
  ProxyCommand corkscrew 172.22.0.1 7897 %h %p
```

###### 测试
```
chmod 600 ~/.ssh/config

ssh -vT git@github.com
```

##### 方案三：在 windows 或 wsl 中安装客户端（放弃）
```
- 在 Windows 或 WSL 中运行 dns-over-https/DoT 客户端（如 dnscrypt-proxy、cloudflared、systemd-resolved with DoH），并且将其配置为通过你的 HTTP/SOCKS 代理上行 DNS 请求（使 DNS 解析不被本地 ISP 干扰）。优点是全局 DNS 稳定且不易被劫持；缺点需要额外安装和（可能）代理转发配置。若你需要，我可以给出具体安装与配置步骤（例如在 WSL 中安装 dnscrypt-proxy 并通过 http/socks 代理转发）。
```