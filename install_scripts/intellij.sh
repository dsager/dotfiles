
wget http://download.jetbrains.com/idea/ideaIU-14.1.3.tar.gz -O ~/Downloads/idea.tar.gz
sudo tar -xf ~/Downloads/idea.tar.gz -C /opt
BUILD=`ls /opt | grep "idea-" | tail -n1`
rm /opt/idea
sudo ln -s /opt/$BUILD /opt/idea
echo "-Dhidpi=true" >> /opt/idea/bin/idea64.vmoptions
rm ~/Downloads/idea.tar.gz

