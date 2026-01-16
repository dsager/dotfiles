#!/usr/bin/env sh

gsettings set org.gnome.desktop.wm.preferences          mouse-button-modifier               "'<Alt>'"
gsettings set org.gnome.desktop.wm.preferences          resize-with-right-button            "true"

gsettings set org.gnome.mutter                          dynamic-workspaces                  "false"
