#!/usr/bin/env sh

. /etc/lsb-release

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys ACCAF35C

echo "deb http://apt.insynchq.com/ubuntu ${DISTRIB_CODENAME} non-free contrib" \
  | sudo tee /etc/apt/sources.list.d/insync.list
sudo apt-get update
sudo apt-get -y install insync

