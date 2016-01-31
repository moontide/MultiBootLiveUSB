# MultiBootLiveUSB #

这是用于制作启动多个系统 LiveUSB 的 syslinux 配置，你可根据自己的需要去修改。

## 如何制作多启动 LiveUSB ##

* 准备一个能启动的 U 盘
* 将 U 盘格式化，并在其根目录创建 `boot/syslinux` 两级文件夹，用来存放 syslinux 的配置文件及其程序文件
* 下载[最新版的 syslinux 启动器程序](https://www.kernel.org/pub/linux/utils/boot/syslinux/)，并安装
	`syslinux/bios/linux/syslinux -i -d /boot/syslinux <分区设备，如 /dev/sdd1>`
* 将本仓库里的 `/boot/syslinux/syslinux.cfg` 文件复制到 U 盘下的 `boot/syslinux` 目录下，并修改 syslinux.cfg 中 <del>`087E-FCC4`</del> 替换为自己 U 盘分区的 UUID
* 下载各 linux 版的 LiveCD ISO 文件 (如: `F20-x86_64-LIVE-MATE-20140902.iso`  `debian-live-7.6.0-amd64-lxde-desktop.iso`)，并解压（是的，解压就可以了，配置文件已经搞定）到 U 盘根目录下的 LiveOS 目录下的子文件夹下，具体子文件夹名称见下面的列表

## 支持哪些 linux 版本(发行版) ##


### 急救盘 ###

* SystemRescueCD  解压目录: `SystemRescueCD`    http://sysresccd.org    http://sourceforge.net/projects/systemrescuecd
* GParted         解压目录: `GParted`    http://gparted.org     http://sourceforge.net/projects/gparted
* CloneZilla      解压目录: `CloneZilla`    http://clonezilla.org    http://sourceforge.net/projects/clonezilla
* PartedMagic     解压目录: `PartedMagic`    http://partedmagic.com    http://sourceforge.net/projects/partedmagic (作者已不再免费提供编译打包好的 ISO 下载，而且也已从 sourceforge.net 上删除了历史文件，其他下载网站能下载到的是 pmagic\_2013\_08\_01.iso)


### 红帽系 ###

* CentOS          解压目录: `CentOS`    http://centos.org    http://mirrors.ustc.edu.cn/centos    http://mirrors.ustc.edu.cn/centos/6    http://mirrors.ustc.edu.cn/centos/7
* Fedora          解压目录: `Fedora`    http://fedoraproject.org    http://mirrors.ustc.edu.cn/fedora/linux


### Debian 系 ###

* Debian          解压目录: `Debian`    http://debian.org    http://mirrors.ustc.edu.cn/debian-cd
* Ubuntu          解压目录: `Ubuntu`    http://ubuntu.com    http://mirrors.ustc.edu.cn/ubuntu-cdimage
* Ubuntu Kylin    解压目录: `UbuntuKylin`    http://www.ubuntukylin.com    http://mirrors.ustc.edu.cn/ubuntu-cdimage/ubuntukylin
* Knoppix         解压目录: `Knoppix`    http://knoppix.net    http://mirrors.ustc.edu.cn/knoppix    http://mirrors.ustc.edu.cn/knoppix-dvd


### Android 系 ###

* Android-x86     解压目录: `Android-x86`    http://android-x86.org    http://sourceforge.net/projects/android-x86

