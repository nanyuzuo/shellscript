#!/bin/bash
#
#*****************************************************
#Author:        huwei
#QQ:            115185849
#Date:          2020-05-05
#FileName:      rm.sh
#Description:   replace the "rm" command by mv  
#URL:           http://nanyuzuo.xin/hexo
#Copyright (c):2020 All rights reserved
#****************************************************
case $1 in
-f|-rf|-r)
	if [ $# -ge 2 ];then
	DIR=$(mktemp -d /backup/`date +%F_%T`XXX)
	while [ "$2" ];do
		mv $2 $DIR
		shift
	done
	else
	echo "you need input the file/dir name you need to delete"
	fi
	;;
-nobak)
        if [ $# -ge 2 ];then
	while [ "$2" ];do
        rm -rf  $2 
        shift
        done
        else
        echo "you need input the file/dir name you need to delete"
        fi
        ;;
-h|--help)
	echo 'introduction:
	this rm is  alias  for the  rm command,you can move the file/dir to /backup/dir
	the option "-r", "-f","-rf" is used to move the file or directory
	the option "-nobak" is used to delete the file or directory,as the rm command'
        ;;
*)
	echo 'you need add a option:
	the option "-r", "-f","-rf" is used to move the file or directory
	the option "-nobak" is used to delete the file or directory,as the rm command'
	exit 1
esac

