#!/usr/bin/env sh

curl -s https://toolbelt.heroku.com/apt/release.key \
  | sudo apt-key add -
echo "deb http://toolbelt.heroku.com/ubuntu ./" \
  | sudo tee /etc/apt/sources.list.d/heroku.list
sudo apt-get update
sudo apt-get -y install heroku-toolbelt

