#! /bin/sh

TARGET_FOLDER="${HOME}/.local/tools/Franz"

cat > ~/.local/share/applications/franz.desktop <<EOL
[Desktop Entry]
Version=1.0
Type=Application
Name=Franz
Icon=${TARGET_FOLDER}/resources/app.asar.unpacked/assets/franz.svg
Exec="${TARGET_FOLDER}/Franz" %f
Categories=
Terminal=false
EOL

