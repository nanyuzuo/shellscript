#!/bin/bash
#
#*****************************************************
#Author:        huwei
#QQ:            115185849
#Date:          2020-05-06
#FileName:      expect_useradd.sh
#Description:    
#URL:           http://nanyuzuo.xin/hexo
#Copyright (c):2020 All rights reserved
#****************************************************
NET=10.0.0
user=root
password=Ubuntu12.04

for ID in 107 108;do
ip=$NET.$ID
expect <<EOF
set timeout 20
spawn ssh $user@$ip
expect {
	"yes/no" { send "yes\n";exp_continue }
	"password" { send "$password\n" }
	}
expect "#" { send "useradd test1\n" }
expect "#" { send "echo test1|passwd --stdin test1\n" }
expect "#" { send "exit\n" }
expect eof
EOF
done

