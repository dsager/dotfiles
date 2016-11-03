#! /bin/sh

# install postman
wget https://dl.pstmn.io/download/latest/linux?arch=64 -O ~/Downloads/postman.tar.xz
tar -xf ~/Downloads/postman.tar.xz -C ~/.local/tools
rm ~/Downloads/postman.tar.xz
