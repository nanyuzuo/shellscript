#!/bin/bash
#
#*****************************************************
#Author:        huwei
#QQ:            115185849
#Date:          2020-05-03
#FileName:      for1+100_2.sh
#Description:    
#URL:           http://nanyuzuo.xin/hexo
#Copyright (c):2020 All rights reserved
#****************************************************
for((sum=0,i=1;i<=100;i++));do
	let sum+=i
done
echo $sum
