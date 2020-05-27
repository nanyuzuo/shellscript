#!/bin/bash
#
#*****************************************************
#Author:        huwei
#QQ:            115185849
#Date:          2020-05-04
#FileName:      system_init.sh
#Description:    
#URL:           http://nanyuzuo.xin/hexo
#Copyright (c):2020 All rights reserved
#****************************************************
PS3="请选择相应的编号（1-5）："
MENU="
禁用SELinux
关闭防火墙
修改提示符
改网卡名称
退出"

select menu in $MENU;do
case $REPLY in 
1)
	sed -i.bak 's/SELINUX=enforcing/SELINUX=disabled/' /etc/selinux/config
	echo "已禁用SELinux，需要重启生效"
        ;;
2)
        systemctl disable --now firewalld
	echo "已关闭并禁用防火墙，需要重启后生效"
	;;
3)
	echo "PS1='\[\e[1;32m\][\[\e[0m\]\t \[\e[1;33m\]\u\[\e[36m\]@\h\[\e[1;31m\] \W\[\e[1;32m\]]\[\e[0m\]\\$'" > /etc/profile.d/reset.sh
	echo "提示符已修改，退出重进后生效"
	;;
4)
        sed -i.bak '/GRUB_CMDLINE_LINUX/s|"$| net.ifnames=0"|' /etc/default/grub
	grub2-mkconfig -o /boot/grub2/grub.cfg
	echo "网卡名已修改，重启后生效"
	;;
5)
	break
	;;
*)
	echo "输入的选项无效，请输入正确的选项"
esac
done




