#!/bin/bash
#
#*****************************************************
#Author:        huwei
#QQ:            115185849
#Date:          2020-05-03
#FileName:      for1+100.sh
#Description:    
#URL:           http://nanyuzuo.xin/hexo
#Copyright (c):2020 All rights reserved
#****************************************************
sum=0
for i in {1..100};do
        let sum+=$i
done
echo $sum
