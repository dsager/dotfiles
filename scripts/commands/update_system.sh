#!/usr/bin/env sh

cd $HOME

# update packages
sudo pamac update

# update snap packages
sudo snap refresh

# update flatpak apps
flatpak update

# update fish plugins
fish -c 'fisher'

# update dotfiles & password store
cat $HOME/.projects.gws | /usr/bin/gws
