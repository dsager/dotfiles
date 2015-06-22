## install basic packages
sudo apt-get install xclip tree git firefox zsh dconf-editor vim-addon-manager \
                     virtualbox vagrant transmission imagemagick mplayer \
                     gtk-recordmydesktop libxml2-dev rpcbind nfs-kernel-server \
                     tmux

## configuration

# set zsh as default shell
chsh -s /bin/zsh

# set desktop scaling to 2 (HiDPI)
gsettings set org.gnome.desktop.interface scaling-factor 2

