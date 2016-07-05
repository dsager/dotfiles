#!/usr/bin/env sh

PACKAGES=""

# insync
curl -s https://d2t3ff60b2tol4.cloudfront.net/services@insynchq.com.gpg.key \
  | sudo apt-key add -
echo deb http://apt.insynchq.com/ubuntu wily non-free \
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
echo deb http://repository.spotify.com stable non-free 
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
PACKAGES="${PACKAGES} solaar-gnome3"

# Zeal docbrowser
sudo add-apt-repository ppa:zeal-developers/ppa
PACKAGES="${PACKAGES} zeal"

## install additional packages
sudo apt-get update
sudo apt-get upgrade
sudo apt-get -y install ${PACKAGES}
sudo apt-get autoremove
sudo apt-get autoclean

