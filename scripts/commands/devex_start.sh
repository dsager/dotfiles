#!/usr/bin/env sh

tab="--tab-with-profile=dani"

VARS='export VMSETUP_DISABLE_FRONTEND_FORWARD=1; export VMSETUP_DISABLE_BACKEND_FORWARD=1'

gnome-terminal \
  $tab -e "zsh -c '$VARS; cd $HOME/src/work/vm-setup; vagrant up; $HOME/.local/bin/devex_vagrant_tunnel';zsh" \
  $tab -e "zsh -c 'cd $HOME/src/work';zsh" \
