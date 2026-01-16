#!/usr/bin/env sh

gsettings set org.gnome.desktop.input-sources           xkb-options                         "['compose:caps']"

gsettings set org.gnome.shell.app-switcher              current-workspace-only              "false"

gsettings set org.gnome.shell.extensions.gtile           insets-primary-left                "0"
gsettings set org.gnome.shell.extensions.gtile           show-toggle-tiling                 "['<Super>t']"
gsettings set org.gnome.shell.extensions.gtile           window-margin                      "0"
