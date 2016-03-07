#!/usr/bin/env sh

sudo mkdir -p /media/data

# data partition
grep '/dev/sda3' /etc/fstab > /dev/null
if [ $? -eq 1 ]; then
  MOUNT_OPTS="rw,user,exec,auto,owner"
  echo "/dev/sda3    /media/data    ext4    ${MOUNT_OPTS}    0    2" | \
    sudo tee -a /etc/fstab
  sudo mount /dev/sda3
fi
