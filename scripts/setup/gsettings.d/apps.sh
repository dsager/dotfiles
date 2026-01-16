#!/usr/bin/env sh

gsettings set org.gnome.settings-daemon.plugins.media-keys    screensaver                   "['<Super>l']"
gsettings set org.gnome.settings-daemon.plugins.media-keys    home                          "['<Super>h']"
gsettings set org.gnome.settings-daemon.plugins.media-keys    calculator                    "['<Super>c']"

DCONF_PATH="/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/"
gsettings set org.gnome.settings-daemon.plugins.media-keys                                  custom-keybindings  "['${DCONF_PATH}']"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:${DCONF_PATH}  name                "ulauncher"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:${DCONF_PATH}  command             "ulauncher-toggle"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:${DCONF_PATH}  binding             "<Alt>space"

gsettings set org.gnome.gthumb.browser                   scroll-action                      "'zoom'"
