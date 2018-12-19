#!/usr/bin/env /bin/bash

DIR="/run/media/dani/data"
UUID="039dc6e2-3a89-4e29-a026-2ef4065dd0b2"

grep "${UUID}" /etc/fstab > /dev/null
if [ $? -eq 1 ]; then
  sudo mkdir -p "${DIR}"
  sudo chown -R -v dani:dani "${DIR}"
  sudo chmod -Rf 660 "${DIR}"

  MOUNT_OPTS="rw,user,exec,auto,owner"
  echo "UUID=${UUID}    ${DIR}    ext4    ${MOUNT_OPTS}    0    2" | \
    sudo tee -a /etc/fstab
  sudo mount "${DIR}"
fi
