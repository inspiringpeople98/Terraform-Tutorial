#!/bin/bash -xe
exec > >(tee /var/log/user-data.log|logger -t user-data -s 2>/dev/console) 2>&1
sleep 30
sudo mkdir -p  /data
sleep 30
sudo mkfs.ext4 /dev/xvdh
sudo mount /dev/xvdh /data
