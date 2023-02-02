#!/usr/bin/env sh

cd $HOME

# update packages
pamac update --aur

# update fish plugins
fish -c 'fisher update'

# update all git repos, including dotfiles & password store
/usr/bin/gws ff

