#!/bin/bash
#
#*****************************************************
#Author:        huwei
#QQ:            115185849
#Date:          2020-05-06
#FileName:      sort.sh
#Description:   冒泡算法实现10个随机数的排序 
#URL:           http://nanyuzuo.xin/hexo
#Copyright (c):2020 All rights reserved
#****************************************************
declare -a num
for((i=0;i<10;i++));do
	num[$i]=$RANDOM
done
#num=({9..0})
echo 所生成数列是：${num[*]}
for((j=9;j>0;j--));do
for((i=0;i<j;i++));do
next=$[$i+1]
A=${num[$i]}
B=${num[$next]}
switch(){
A=$[A^B]
B=$[A^B]
A=$[A^B]
}
[ $A -gt $B ] && switch;num[$i]=$A;num[$next]=$B  && continue 
done
done
echo 从小到大排序结果是：${num[*]}
echo 最大数是：${num[9]}
echo 最小数是：${num[0]}
