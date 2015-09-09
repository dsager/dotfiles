#!/usr/bin/env sh

## install basic packages
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install -y xclip tree git firefox zsh dconf-editor vim-addon-manager \
                        vagrant transmission imagemagick mplayer \
                        gtk-recordmydesktop libxml2-dev rpcbind nfs-kernel-server \
                        tmux laptop-mode-tools nodejs-legacy npm gnupg jq \
                        geoclue-2.0 redshift redshift-gtk calibre chromium-browser \
                        ppa-purge network-manager-openvpn indicator-multiload

# set zsh as default shell
chsh -s /bin/zsh
