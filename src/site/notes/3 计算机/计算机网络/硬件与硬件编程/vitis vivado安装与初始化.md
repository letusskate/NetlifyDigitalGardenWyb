---
{"dg-publish":true,"permalink":"/3 计算机/计算机网络/硬件与硬件编程/vitis vivado安装与初始化/","title":"vitis vivado安装与初始化"}
---


## 安装时停在 'Generating installed device list'
### 网页
<https://support.xilinx.com/s/question/0D52E00006hpmTmSAI/vivado-20183-final-processing-hangs-at-generating-installed-device-list-on-ubuntu-1904?language=en_US>
### 解决方法
Close the installation with option to restart from same folder.  
Install the following libraries:  
sudo apt intall libtinfo5  
sudo apt intall libncurses5  
Re-launch the installation

## 导入 U50
观看腾讯会议视频，在 linux 的 vivado2020.2 导入 u50,失败，后续可以更换 vivado 版本再试。  
### 相关教程
https://support.xilinx.com/s/article/72033?language=en_US  
https://docs.xilinx.com/r/en-US/ug895-vivado-system-level-design-entry/Adding-User-Boards-to-a-Repository  
### 后来的解决方法
Tip: The Vivado Design Suite board repository at <Vivado_install_location>/data/boards is always read regardless of the value of this parameter.  
后来把 u50 文件夹放到这个目录下，成功了。