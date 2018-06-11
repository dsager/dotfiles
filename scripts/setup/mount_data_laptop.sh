#!/usr/bin/env sh
DEVICE="/dev/nvme0n1p2"
DIR="/media/data"

grep "${DEVICE}" /etc/fstab > /dev/null
if [ $? -eq 1 ]; then
  sudo mkdir -p "${DIR}"
  sudo chown -R -v dani:dani "${DIR}"
  sudo chmod -Rf 777 "${DIR}"

  MOUNT_OPTS="rw,user,exec,auto,owner"
  echo "${DEVICE}    ${DIR}    ext4    ${MOUNT_OPTS}    0    2" | \
    sudo tee -a /etc/fstab
  sudo mount "${DEVICE}"
fi
