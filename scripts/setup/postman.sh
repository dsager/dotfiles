#! /bin/sh

TARGET_FOLDER="${HOME}/.local/tools/Postman"

if [ -d "$TARGET_FOLDER" ]; then
  if [ "$1" = "update" ]; then
    rm -rf "$TARGET_FOLDER"
  else
    echo "Postman directory exists, run script with command 'update'."
    exit 1
  fi
fi

# install postman
wget https://dl.pstmn.io/download/latest/linux?arch=64 -O ~/Downloads/postman.tar.xz
tar -xf ~/Downloads/postman.tar.xz -C ~/.local/tools
rm ~/Downloads/postman.tar.xz

cat > ~/.local/share/applications/postman.desktop <<EOL
[Desktop Entry]
Version=1.0
Type=Application
Name=Postman
Icon=${TARGET_FOLDER}/resources/app/assets/icon.png
Exec="${TARGET_FOLDER}/Postman" %f
Categories=Development;IDE;
Terminal=false
EOL

