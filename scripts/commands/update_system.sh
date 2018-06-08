#! /bin/sh

cd $HOME

# update apt packages
sudo apt update && \
  sudo apt upgrade && \
  sudo apt autoremove && \
  sudo apt autoclean

# update snap packages
sudo snap refresh

# update flatpak apps
flatpak update

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
