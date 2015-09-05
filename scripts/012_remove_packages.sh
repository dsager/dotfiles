#!/usr/bin/env sh

## remove some basic packages
sudo apt-get remove geary midori-granite

# set zsh as default shell
chsh -s /bin/zsh
