#! /bin/sh

## install basic packages
sudo apt-get update
sudo apt-get install xclip tree git firefox zsh dconf-editor vim-addon-manager \
                     virtualbox vagrant transmission imagemagick mplayer \
                     gtk-recordmydesktop libxml2-dev rpcbind nfs-kernel-server \
                     tmux laptop-mode-tools bleachbit

## add additional repositories

# caffeine
sudo add-apt-repository ppa:caffeine-developers/ppa
# linssid
sudo add-apt-repository ppa:wseverin/ppa
# insync
wget -qO - https://d2t3ff60b2tol4.cloudfront.net/services@insynchq.com.gpg.key \
  | sudo apt-key add -
echo deb http://apt.insynchq.com/ubuntu trusty non-free \
  | sudo tee /etc/apt/sources.list.d/insync.list
# oracle java
sudo add-apt-repository ppa:webupd8team/java
# scudcloud (slack)
sudo apt-add-repository -y ppa:rael-gc/scudcloud
# syncthing
curl -s https://syncthing.net/release-key.txt | sudo apt-key add -
echo deb http://apt.syncthing.net/ syncthing release \
  | sudo tee /etc/apt/sources.list.d/syncthing-release.list
# syncthing gtk client
sudo add-apt-repository ppa:nilarimogard/webupd8
# spotify
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 94558F59 D2C19886
echo deb http://repository.spotify.com testing non-free \
  | sudo tee /etc/apt/sources.list.d/spotify.list
# updated graphics driver
sudo add-apt-repository ppa:oibaf/graphics-drivers

## install additional packages
sudo apt-get update
sudo apt-get install linssid caffeine insync oracle-java8-installer scudcloud \
                     syncthing syncthing-gtk spotify-client

## configuration

# set zsh as default shell
chsh -s /bin/zsh

# set desktop scaling to 2 (HiDPI)
gsettings set org.gnome.desktop.interface scaling-factor 2

# change scudcloud image
wget https://d13yacurqjgara.cloudfront.net/users/48487/screenshots/1400899/attachments/203336/slack-3d.png
sudo dpkg-divert --add --rename --divert /opt/scudcloud/resources/scudcloud.png.real /opt/scudcloud/resources/scudcloud.png
sudo cp ~/.dotfiles/icons/slack-3d.png /opt/scudcloud/resources/scudcloud.png
sudo chmod +r /opt/scudcloud/resources/scudcloud.png


