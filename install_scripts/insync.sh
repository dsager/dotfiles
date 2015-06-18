
# insync
wget -qO - https://d2t3ff60b2tol4.cloudfront.net/services@insynchq.com.gpg.key \
| sudo apt-key add -
echo deb http://apt.insynchq.com/ubuntu trusty non-free \
 | sudo tee /etc/apt/sources.list.d/insync.list
sudo apt-get update
sudo apt-get install insync
