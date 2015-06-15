
# spotify
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 94558F59 D2C19886
echo deb http://repository.spotify.com testing non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install  spotify-client

# set device scaling: run client with --force-device-scale-factor=2
# https://community.spotify.com/t5/Spotify-Announcements/Spotify-Client-1-x-beta-for-Linux-has-been-released/m-p/1147858#M7284
