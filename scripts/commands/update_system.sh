#!/usr/bin/env sh

cd $HOME

# update packages
pamac checkupdates --aur
if [ $? -ne 0 ]; then
  pamac update --aur
fi

# update fish plugins
fish -c 'fisher update'

# update all git repos, including dotfiles & password store
/usr/bin/gws ff

