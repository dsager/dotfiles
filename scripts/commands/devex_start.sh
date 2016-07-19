#!/usr/bin/env sh

tab="--tab-with-profile=dani"

gnome-terminal \
  $tab -e "zsh -c 'cd $HOME/src/work/vm-setup; vagrant up; $HOME/.local/bin/devex_vagrant_tunnel';zsh" \
  $tab -e "zsh -c 'cd $HOME/src/work';zsh" \
