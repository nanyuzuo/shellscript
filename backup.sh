#!/bin/bash

echo -e "\033[1;32mStarting backup \033[0m"
sleep 2
cp -av /etc/ /data/backup/backup_`date +%F`/
echo -e "\033[1;32mBackup success! \033[0m"

