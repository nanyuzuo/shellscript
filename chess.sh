#!/bin/bash
#
#*****************************************************
#Author:        huwei
#QQ:            115185849
#Date:          2020-05-04
#FileName:      chess.sh
#Description:   print the chess pane 
#URL:           http://nanyuzuo.xin/hexo
#Copyright (c):2020 All rights reserved
#****************************************************
for((i=1;i<=8;i++));do
if [ $((i%2)) -eq 0 ];then
	for((j=1;j<=8;j++));do
	if [ $((j%2)) -eq 0 ];then
	echo -e "\033[41m  \033[0m\c"
	else
	echo -e "\033[43m  \033[0m\c"
        fi
	done
	echo
else
        for((k=1;k<=8;k++));do
	if [ $((k%2)) -eq 1 ];then
	echo -e "\033[41m  \033[0m\c"
	else
	echo -e "\033[43m  \033[0m\c"
        fi
	done
	echo
fi
done
echo
