#! /bin/sh

gconftool-2 --dump /apps/guake > ~/.dotfiles/config-export/guake/apps-guake.xml
gconftool-2 --dump /schemas/apps/guake > ~/.dotfiles/config-export/guake/schemas-apps-guake.xml

