#!/usr/bin/env sh

# install OMF
curl -L https://get.oh-my.fish > $HOME/omf_installer
fish $HOME/omf_installer --path=~/.local/share/omf --config=~/.config/omf
rm $HOME/omf_installer

