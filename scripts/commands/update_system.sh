#! /bin/sh

cd $HOME

sudo apt-get update && \
  sudo apt-get upgrade && \
  sudo apt-get autoremove && \
  sudo apt-get autoclean

npm update -g

gem update

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
