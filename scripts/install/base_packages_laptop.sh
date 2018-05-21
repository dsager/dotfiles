#!/usr/bin/env sh

sudo apt update
sudo apt install -y laptop-mode-tools \
                    tlp \
                    tlp-rdw \


sudo tlp start

