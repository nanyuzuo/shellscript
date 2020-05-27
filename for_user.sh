#!/bin/bash
#
#*****************************************************
#Author:        huwei
#QQ:            115185849
#Date:          2020-05-03
#FileName:      for_user.sh
#Description:   adduser_for 
#URL:           http://nanyuzuo.xin/hexo
#Copyright (c):2020 All rights reserved
#****************************************************
USER="huwei
wang
zhou
bai
mage
fang"
for username in $USER;do
	useradd $username
	pass=`cat /dev/urandom | tr -dc '[:alnum:]'|head -c10`
        echo $pass | passwd --stdin $username &> /dev/null
        echo $username:$pass >> /root/user.log
	passwd -e $username &> /dev/null
	echo "$username is created"
done 


