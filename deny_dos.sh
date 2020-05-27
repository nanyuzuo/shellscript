#!/bin/bash
#
#*****************************************************
#Author:        huwei
#QQ:            115185849
#Date:          2020-05-07
#FileName:      /data/script/deny_dos.sh
#Description:    
#URL:           http://nanyuzuo.xin/hexo
#Copyright (c):2020 All rights reserved
#****************************************************
ss -nt |grep "^ESTAB"|awk -F"[[:space:]]+|:" '{print $(NF-2)}'|sort|uniq -c|while read count ip;do
	if [ $count -gt 3 ];then
		iptables -A INPUT -s $ip -j REJECT
	fi
	done
