#!/usr/bin/env sh

codename=`source /etc/lsb-release && echo $DISTRIB_CODENAME`

curl -s https://d2t3ff60b2tol4.cloudfront.net/services@insynchq.com.gpg.key \
  | sudo apt-key add -
echo "deb http://apt.insynchq.com/ubuntu ${codename} non-free contrib" \
  | sudo tee /etc/apt/sources.list.d/insync.list
sudo apt-get update
sudo apt-get -y install insync

