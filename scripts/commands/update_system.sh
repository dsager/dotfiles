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

# update dotfiles
cd $HOME/.dotfiles
if [ -z "$(git status --untracked-files=no --porcelain)" ]; then
  git pull
fi

# update password store
cd $HOME/.password-store
if [ -z "$(git status --untracked-files=no --porcelain)" ]; then
  git pull
fi
