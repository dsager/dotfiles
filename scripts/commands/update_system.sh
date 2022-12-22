#!/usr/bin/env sh

cd $HOME

# update packages
pamac update --aur

# update snap packages
snap refresh

# update flatpak apps
flatpak update

# update fish plugins
fish -c 'fisher update'

# update all git repos, including dotfiles & password store
cat $HOME/.projects.gws | /usr/bin/gws ff
