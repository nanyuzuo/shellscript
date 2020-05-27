#!/bin/bash
#
#*****************************************************
#Author:        huwei
#QQ:            115185849
#Date：         2020-04-26
#FileName:      yesorno.sh
#URL:           http://nanyuzuo.xin
#Copyright (c): 2020 All rights reserved
#****************************************************
read -p "请输入yes或no: " INPUT
INPUT=`echo $INPUT | tr "A-Z" "a-z"`
case $INPUT in
y|yes)
	echo "你输入的是yes"
	;;
n|no)
	echo "你输入的是no"
	;;
*)

	echo "你输错了，请输入yes或no"
esac

