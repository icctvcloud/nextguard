# NextGuard 安装说明

## 支持的操作系统

### ubunutu 
	
	x86 64位 版本号：18、20、22
	
### centos

	x86 64位 版本号：7.9、8.5

### windows

	x86 64位 版本号：10、11
	
## 需要打开的防火墙端口

80 tcp

443 tcp

5060 udp

10100～10200 tcp

## 获取软件

ubunutu/centos/window 操作系统，在硬盘空余较多的目录下，以root	在终端窗口运行
 	
 	git clone https://github.com/icctvcloud/nextguard.git

## docker环境
NextGuard系统以docker模式运行，因此需要安装docker支撑环境。进入nextguard目录

ubunutu 操作系统，以root在终端窗口运行

	docker_ubuntu_install.sh
	
	如果此脚本运行比较慢，可以编辑此脚本（具体方法请根据其中的说明）。
	
centos 操作系统，以root在终端窗口运行

	docker_centos_install.sh
	
	如果此脚本运行比较慢，可以编辑此脚本（具体方法请根据其中的说明）。

window操作系统，需要安装docker desktop
	
## 初始化

编辑 .env 文件

修改.env里的ACME_EMAIL(申请ssl证书用)，修改为您自己的email地址。

修改.env各种密钥。

## 启动系统
ubunutu/centos 操作系统，以root在终端窗口运行

	nextguard_start.cn.sh

window操作系统
	
	在nextguard目录，双击nextguard_start.cn.bat	

## 关闭系统
ubunutu/centos 操作系统，以root在终端窗口运行

	nextguard_stop.sh

window操作系统
	
	在nextguard目录，双击nextguard_stop.bat	
