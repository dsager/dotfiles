KITTY_DIR="$HOME/.local/tools/kitty"

echo
echo "remove current kitty version:"
echo "  $KITTY_DIR"
rm -rf $KITTY_DIR
mkdir -p $KITTY_DIR
echo "done"

URL="https://api.github.com/repos/kovidgoyal/kitty/releases/latest"
echo
echo "get latest kitty version number from github:"
echo "  $URL"
LATEST_VERSION=$(curl -sL $URL | jq -r .tag_name | sed -e 's/v//g')
echo "done"

URL="https://github.com/kovidgoyal/kitty/releases/download/v$LATEST_VERSION/kitty-$LATEST_VERSION-$(uname -m).txz"
echo
echo "get latest kitty from github:"
echo "  $URL"
curl -sL $URL -o "$KITTY_DIR/kitty.txz"
cd $KITTY_DIR && tar -xf kitty.txz
echo "done"

FILE="$HOME/.local/share/applications/kitty.desktop"
echo
echo "create desktop file"
echo "  $FILE"
cat > $FILE <<EOL
[Desktop Entry]
Name=Kitty Terminal
Comment=Use the command line
Keywords=shell;prompt;command;commandline;cmd;
TryExec=/home/dani/.local/tools/kitty/bin/kitty
Exec=/home/dani/.local/tools/kitty/bin/kitty
Icon=utilities-terminal
Type=Application
Categories=TerminalEmulator;
StartupNotify=true
Actions=new-window;devex-session

[Desktop Action new-window]
Name=New Terminal
Exec=/home/dani/.local/tools/kitty/bin/kitty

[Desktop Action devex-session]
Name=Devex Session
Exec=/home/dani/.local/tools/kitty/bin/kitty --session /home/dani/.config/kitty/devex.session
EOL
echo "done"

echo
