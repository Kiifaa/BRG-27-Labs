#!/bin/bash

now=$(date +"%d_%m_%y_%H%M%S")

mkdir -p /home/kiefer/backup
cp -R /home/kiefer/Documents/* /home/kiefer/backup/

zip -r /home/kiefer/$now.zip /home/kiefer/backup/*

scp /home/kiefer/$now.zip kiefer@localhost:/home/kiefer/

echo "Backup completed: /home/kiefer/$now.zip"
