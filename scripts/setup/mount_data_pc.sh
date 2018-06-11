#!/usr/bin/env sh

sudo mkdir -p /media/data

# data partition
grep '/dev/sdb2' /etc/fstab > /dev/null
if [ $? -eq 1 ]; then
  MOUNT_OPTS="rw,user,exec,auto,owner"
  echo "/dev/sdb2    /media/data    ntfs    ${MOUNT_OPTS}    0    2" | \
    sudo tee -a /etc/fstab
  sudo mount /dev/sdb2
fi
