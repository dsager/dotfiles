#! /bin/sh

wget https://prerelease.keybase.io/keybase_amd64.deb \
  -O ~/Downloads/keybase_amd64.deb
sudo dpkg -i ~/Downloads/keybase_amd64.deb
sudo apt install -f
run_keybase
