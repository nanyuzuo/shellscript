#!/bin/bash
#
#*****************************************************
#Author:        huwei
#QQ:            115185849
#Date：         2020-04-25
#FileName:      scp.sh
#URL:           http://nanyuzuo.xin
#Copyright (c): 2020 All rights reserved
#****************************************************
echo -e "\033[1;32mstarting copy\033[0m"
sleep 2
scp $* root@nanyuzuo.xin:/alidata/www/script
echo -e "\033[1;32mcopy success!\033[0m"
