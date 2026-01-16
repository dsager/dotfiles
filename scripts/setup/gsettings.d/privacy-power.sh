#!/usr/bin/env sh

gsettings set org.gnome.desktop.screensaver              lock-delay                         "uint32 3600"

gsettings set org.gnome.desktop.search-providers         disable-external                   "true"

gsettings set org.gnome.desktop.privacy                  remove-old-temp-files              "true"
gsettings set org.gnome.desktop.privacy                  old-files-age                      "uint32 14"
gsettings set org.gnome.desktop.privacy                  remove-old-trash-files             "true"

gsettings set org.gnome.settings-daemon.plugins.power   sleep-inactive-ac-timeout           "3600"
gsettings set org.gnome.settings-daemon.plugins.power   sleep-inactive-ac-type              "'nothing'"
