#!/usr/bin/env sh

PACKAGES=""

# caffeine
sudo add-apt-repository ppa:caffeine-developers/ppa
PACKAGES="${PACKAGES} caffeine"

# linssid
sudo add-apt-repository ppa:wseverin/ppa
PACKAGES="${PACKAGES} linssid"

# insync
curl -s https://d2t3ff60b2tol4.cloudfront.net/services@insynchq.com.gpg.key \
  | sudo apt-key add -
echo deb http://apt.insynchq.com/ubuntu trusty non-free \
  | sudo tee /etc/apt/sources.list.d/insync.list
PACKAGES="${PACKAGES} insync"

# oracle java
sudo add-apt-repository ppa:webupd8team/java
PACKAGES="${PACKAGES} oracle-java8-installer"

# scudcloud (slack)
sudo apt-add-repository -y ppa:rael-gc/scudcloud
PACKAGES="${PACKAGES} scudcloud"

# syncthing
curl -s https://syncthing.net/release-key.txt | sudo apt-key add -
echo deb http://apt.syncthing.net/ syncthing release \
  | sudo tee /etc/apt/sources.list.d/syncthing-release.list
# syncthing gtk client
sudo add-apt-repository ppa:nilarimogard/webupd8
PACKAGES="${PACKAGES} syncthing syncthing-gtk"

# spotify
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 94558F59 D2C19886
echo deb http://repository.spotify.com testing non-free \
  | sudo tee /etc/apt/sources.list.d/spotify.list
PACKAGES="${PACKAGES} spotify-client"

# heroku toolbelt
curl -s https://toolbelt.heroku.com/apt/release.key | sudo apt-key add -
echo "deb http://toolbelt.heroku.com/ubuntu ./" \
  | sudo tee /etc/apt/sources.list.d/heroku.list
PACKAGES="${PACKAGES} heroku-toolbelt"

# updated graphics driver
sudo add-apt-repository ppa:oibaf/graphics-drivers

# solaar for logitech unifying receiver
sudo add-apt-repository ppa:daniel.pavel/solaar
PACKAGES="${PACKAGES} solaar"

# synapse launcher
sudo add-apt-repository ppa:synapse-core/ppa
PACKAGES="${PACKAGES} synapse"

# birdie twitter client
sudo add-apt-repository ppa:birdie-team/stable
PACKAGES="${PACKAGES} birdie"

# hardware sensors indicator
sudo add-apt-repository ppa:alexmurray/indicator-sensors
PACKAGES="${PACKAGES} indicator-sensors"

# additional icons
sudo add-apt-repository ppa:cybre/elementaryplus
PACKAGES="${PACKAGES} elementaryplus"

# feed reader
sudo add-apt-repository ppa:eviltwin1/feedreader-stable
PACKAGES="${PACKAGES} feedreader"

# uber writer
sudo add-apt-repository ppa:w-vollprecht/ppa
PACKAGES="${PACKAGES} uberwriter"

# vocal podcast player
sudo apt-add-repository ppa:nathandyer/vocal-stable
PACKAGES="${PACKAGES} vocal"

# tomato
sudo apt-add-repository ppa:tomato-team/tomato-stable
PACKAGES="${PACKAGES} tomato"

# variety wallpaper manager
sudo add-apt-repository ppa:peterlevi/ppa
PACKAGES="${PACKAGES} variety"

# math writer
sudo apt-add-repository ppa:nasc-team/daily
PACKAGES="${PACKAGES} nasc"

# virtualbox
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add - 
sudo add-apt-repository "deb http://download.virtualbox.org/virtualbox/debian trusty contrib"
PACKAGES="${PACKAGES} virtualbox-4.3"

## install additional packages
sudo apt-get update
sudo apt-get upgrade
sudo apt-get -y install ${PACKAGES}
sudo apt-get autoremove
sudo apt-get autoclean

## CONFIG

# change scudcloud image
sudo dpkg-divert --add --rename --divert /opt/scudcloud/resources/scudcloud.png.real /opt/scudcloud/resources/scudcloud.png
sudo ln -s ~/.dotfiles/icons/slack-3d.png /opt/scudcloud/resources/scudcloud.png
sudo chmod +r /opt/scudcloud/resources/scudcloud.png
