#! /bin/sh

# upgrade current system
sudo apt-get update
sudo apt-get upgrade

## install basic packages
sudo apt-get install -y xclip tree git firefox zsh dconf-editor vim-addon-manager \
                        virtualbox vagrant transmission imagemagick mplayer \
                        gtk-recordmydesktop libxml2-dev rpcbind nfs-kernel-server \
                        tmux laptop-mode-tools bleachbit nodejs-legacy npm gnupg jq \
                        geoclue-2.0 redshift redshift-gtk

## add additional repositories

# caffeine
sudo add-apt-repository ppa:caffeine-developers/ppa

# linssid
sudo add-apt-repository ppa:wseverin/ppa

# insync
curl -s https://d2t3ff60b2tol4.cloudfront.net/services@insynchq.com.gpg.key \
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

# heroku toolbelt
curl -s https://toolbelt.heroku.com/apt/release.key | sudo apt-key add -
echo "deb http://toolbelt.heroku.com/ubuntu ./" \
  | sudo tee /etc/apt/sources.list.d/heroku.list

# updated graphics driver
sudo add-apt-repository ppa:oibaf/graphics-drivers

# solaar for logitech unifying receiver
sudo add-apt-repository ppa:daniel.pavel/solaar

# synapse launcher
sudo add-apt-repository ppa:synapse-core/ppa

# birdie twitter client
sudo add-apt-repository ppa:birdie-team/stable

# atom text editor
sudo add-apt-repository ppa:webupd8team/atom

# hardware sensors indicator
sudo add-apt-repository ppa:alexmurray/indicator-sensors

# additional icons
sudo add-apt-repository ppa:cybre/elementaryplus

# feed reader
sudo add-apt-repository ppa:eviltwin1/feedreader-stable

# uber writer
sudo add-apt-repository ppa:w-vollprecht/ppa

# vocal podcast player
sudo apt-add-repository ppa:nathandyer/vocal-stable

# tomato
sudo apt-add-repository ppa:tomato-team/tomato-stable

# variety wallpaper manager
sudo add-apt-repository ppa:peterlevi/ppa

## install additional packages
sudo apt-get update
sudo apt-get -y install linssid caffeine insync oracle-java8-installer atom \
                        scudcloud syncthing syncthing-gtk spotify-client solaar \
                        synapse birdie indicator-sensors elementaryplus \
                        heroku-toolbelt feedreader uberwriter vocal tomato \
                        variety

## configuration

# set zsh as default shell
chsh -s /bin/zsh

# change scudcloud image
wget https://d13yacurqjgara.cloudfront.net/users/48487/screenshots/1400899/attachments/203336/slack-3d.png
sudo dpkg-divert --add --rename --divert /opt/scudcloud/resources/scudcloud.png.real /opt/scudcloud/resources/scudcloud.png
sudo cp ~/.dotfiles/icons/slack-3d.png /opt/scudcloud/resources/scudcloud.png
sudo chmod +r /opt/scudcloud/resources/scudcloud.png
