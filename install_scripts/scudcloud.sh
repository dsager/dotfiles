# install scudcloud (slack)
sudo apt-add-repository -y ppa:rael-gc/scudcloud
sudo apt-get update
sudo apt-get install scudcloud

# change image
wget https://d13yacurqjgara.cloudfront.net/users/48487/screenshots/1400899/attachments/203336/slack-3d.png
sudo dpkg-divert --add --rename --divert /opt/scudcloud/resources/scudcloud.png.real /opt/scudcloud/resources/scudcloud.png
sudo cp ~/scudcloud.png /opt/scudcloud/resources/
sudo chmod +r /opt/scudcloud/resources/scudcloud.png

