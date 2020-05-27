#!/bin/bash
#
#*****************************************************
#Author:        huwei
#QQ:            115185849
#Date:          2020-05-20
#FileName:      copycmd.sh
#Description:    
#URL:           http://nanyuzuo.xin/hexo
#Copyright (c):2020 All rights reserved
#****************************************************
copy_cmd() {
        local cmd_destdir=$destdir$(dirname $(which $1))
        if [ ! -d $cmd_destdir ];then
                mkdir -pv $cmd_destdir
        fi
        cp -v $(which $1) $cmd_destdir
}
 
copy_libfile() {
        ldd $(which $1) |grep -oE "/.* " | while read libfile
        do
                local lib_destdir=$destdir$(dirname $libfile)
                local lib_destfile=$destdir$libfile
                if [ -e $lib_destfile ];then
                        continue
                elif [ -d $lib_destdir ];then
                        cp -v $libfile $lib_destdir
                else
                        mkdir -pv $lib_destdir
                        cp -v $libfile $lib_destdir
                fi
        done
}
 
destdir=/mnt/root
 
if [ ! -d $destdir ];then
        mkdir $destdir
fi
while true;do
        echo -ne "\e[33mPlease input a execute command:\e[0m"
        read cmd
        if [ "$cmd" == quit ];then
                exit
        fi
        which $cmd &> /dev/null || { echo $cmd not exist;continue; }
        copy_cmd $cmd
        copy_libfile $cmd
done

