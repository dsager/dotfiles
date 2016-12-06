#! /bin/sh

# install postman
wget https://dl.pstmn.io/download/latest/linux?arch=64 -O ~/Downloads/postman.tar.xz
tar -xf ~/Downloads/postman.tar.xz -C ~/.local/tools
rm ~/Downloads/postman.tar.xz

cat > ~/.local/share/applications/postman.desktop <<EOL
[Desktop Entry]
Version=1.0
Type=Application
Name=Postman
Icon=${HOME}/.local/tools/Postman/resources/app/assets/icon.png
Exec="${HOME}/.local/tools/Postman/Postman" %f
Categories=Development;IDE;
Terminal=false
EOL

