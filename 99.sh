#!/bin/bash
#
#*****************************************************
#Author:        huwei
#QQ:            115185849
#Date:          2020-05-03
#FileName:      99.sh
#Description:    
#URL:           http://nanyuzuo.xin/hexo
#Copyright (c):2020 All rights reserved
#****************************************************
for i in {1..9}
	do
	for j in `seq $i`
	do
	sum=$[$j*$i]
        echo -e "$j×$i=$sum\t\c"
	done
	echo 
done
