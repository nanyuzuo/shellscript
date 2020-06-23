#!/bin/bash
#
#*****************************************************
#Author:        huwei
#QQ:            115185849
#Date:          2020-06-23
#FileName:      pyenv.sh
#Description:   install pyenv  
#URL:           http://nanyuzuo.xin/hexo
#Copyright (c):2020 All rights reserved
#****************************************************
echo 开始安装依赖
yum install git wget zlib-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel readline-devel tk-devel gdbm-devel db4-devel libpcap-devel xz-devel -y
echo 创建python用户
id python || useradd python && echo 创建python用户成功！
echo python | passwd --stdin python && echo python用户密码修改为python
echo 下载pyenv
git clone git://github.com/yyuu/pyenv.git /home/python/.pyenv
echo 下载pyenv-virtualenv插件
git clone git://github.com/yyuu/pyenv-virtualenv.git /home/python/.pyenv/plugins/pyenv-virtualenv
mkdir /home/python/.pyenv/cache
chown python:python -R /home/python/.pyenv
cat >> /home/python/.bash_profile << \EOF
export PATH="/home/python/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
EOF
echo 更换pip源为国内源
mkdir /home/python/.pip
cat > /home/python/.pip/pip.conf << EOF
[global]
index-url=https://mirrors.aliyun.com/pypi/simple/
trusted-host=mirrors.aliyun.com
EOF
chown python:python -R /home/python/.pip
echo 预下载某个版本的python安装包到本地以加快安装
echo -n "请输入您想下步要安装的python版本："
read VER
echo 开始下载python$VER安装包...
wget https://mirrors.huaweicloud.com/python/$VER/Python-$VER.tar.xz -P /home/python/.pyenv/cache
wget https://mirrors.huaweicloud.com/python/$VER/Python-$VER.tgz -P /home/python/.pyenv/cache
echo 安装包下载完毕
echo pyenv环境安装完毕

