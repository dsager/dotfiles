#!/bin/bash

set -u

FILE=$1

PACKAGES=$(cat ${1} | grep -v '#' | grep .)

for PACKAGE in $PACKAGES; do
  echo "- Removing $PACKAGE"
  pacman -R --unneeded --noconfirm --recursive --nosave ${PACKAGE}
done

