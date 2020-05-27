#!/bin/bash
#
#*****************************************************
#Author:        huwei
#QQ:            115185849
#Date:          2020-05-03
#FileName:      chk_disk_space.sh
#Description:   check disk space every 60s,if ge 80%,then send a mail to qq mail 
#URL:           http://nanyuzuo.xin/hexo
#Copyright (c):2020 All rights reserved
#****************************************************
while :;do
	USE=`df| sed -nr '/^\/dev/s|.* ([0-9]+)%.*$|\1|p'|sort -nr|head -1`
	if [ $USE -ge 80 ];then
	echo "服务器硬盘空间已达80%以上"| mail -s warning! 115185849@qq.com
	fi
	sleep 60
done

