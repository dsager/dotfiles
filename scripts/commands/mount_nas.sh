#!/bin/env sh

NAS_IP="192.168.86.39"

sudo mount -t nfs -o nfsvers=4 $NAS_IP:/volume1/Pictures /home/dani/NAS/Pictures
sudo mount -t nfs -o nfsvers=4 $NAS_IP:/volume1/Archive /home/dani/NAS/Archive
sudo mount -t nfs -o nfsvers=4 $NAS_IP:/volume1/Videos /home/dani/NAS/Videos
