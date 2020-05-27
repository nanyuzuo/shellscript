#!/bin/bash
#
#*****************************************************
#Author:        huwei
#QQ:            115185849
#Date:          2020-05-06
#FileName:      scp_aliyun.sh
#Description:   scp file to aliyun_ecs
#URL:           http://nanyuzuo.xin/hexo
#Copyright (c):2020 All rights reserved
#****************************************************
DIR=root@nanyuzuo.xin:/alidata/www
password=Ubuntu12.04

FILE=$1
DESTDIR=$DIR/$2
expect <<EOF
set timeout 20
spawn scp -P 5202 $FILE $DESTDIR
expect 	"password" { send "$password\n" }
expect eof
EOF

