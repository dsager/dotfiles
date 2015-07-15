#! /bin/sh

# dim screen when idle
gsettings set org.gnome.settings-daemon.plugins.power idle-dim true

# mouse and touchpad
gsettings set org.gnome.settings-daemon.peripherals.touchpad motion-threshold 3
gsettings set org.gnome.settings-daemon.peripherals.touchpad motion-acceleration 10.0
gsettings set org.gnome.settings-daemon.peripherals.touchpad disable-while-typing true
gsettings set org.gnome.settings-daemon.peripherals.touchpad tap-to-click true
gsettings set org.gnome.settings-daemon.peripherals.mouse motion-threshold 3
gsettings set org.gnome.settings-daemon.peripherals.mouse motion-acceleration 10

# only use workspaces on primary screen
gsettings set org.gnome.mutter workspaces-only-on-primary true

# screenshot folder in dropbox
gsettings set org.gnome.gnome-screenshot auto-save-directory 'file:///home/dsager/Dropbox/Screenshots/'

# set keys for window management
gsettings set org.gnome.desktop.wm.keybindings close "['<Primary>q']"
gsettings set org.gnome.desktop.wm.keybindings minimize "['<Super>m']"
gsettings set org.gnome.desktop.wm.keybindings maximize "['<Primary><Super>Up']"
gsettings set org.gnome.desktop.wm.keybindings show-desktop "['<Super>Up']"
gsettings set org.gnome.desktop.wm.keybindings unmaximize "['<Primary><Super>Down']"

# set desktop scaling to 2 (HiDPI)
gsettings set org.gnome.desktop.interface scaling-factor 2

# show hidden files in file chooser
gsettings set org.gtk.settings.file-chooser show-hidden true

# slingshot settings
gsettings set org.pantheon.desktop.slingshot screen-resolution '3840x2160'
gsettings set org.pantheon.desktop.slingshot rows 5
gsettings set org.pantheon.desktop.slingshot use-category false

# no dynamic workspaces
gsettings set org.pantheon.desktop.gala.behavior dynamic-workspaces false

# hot corner
gsettings set org.pantheon.desktop.gala.behavior hotcorner-topright 'show-workspace-view'

# don't show launcher button
gsettings set org.pantheon.desktop.wingpanel show-launcher false

# disable single click in files
gsettings set org.pantheon.files.preferences single-click false

# view settings
gsettings set org.pantheon.files.preferences default-viewmode 'miller_columns'
gsettings set org.pantheon.files.column-view zoom-level 'small'
gsettings set org.pantheon.files.icon-view default-zoom-level 'small'
gsettings set org.pantheon.files.icon-view zoom-level='small'

# terminal settings
gsettings set org.pantheon.terminal.settings cursor-color '#839496'
gsettings set org.pantheon.terminal.settings cursor-shape 'I-Beam'
gsettings set org.pantheon.terminal.settings foreground '#94a3a5'
gsettings set org.pantheon.terminal.settings font 'Droid Sans Mono for Powerline'
gsettings set org.pantheon.terminal.settings palette '#073642:#dc322f:#859900:#b58900:#268bd2:#ec0048:#2aa198:#94a3a5:#586e75:#cb4b16:#859900:#b58900:#268bd2:#d33682:#2aa198:#6c71c4'
gsettings set org.pantheon.terminal.settings audible-bell true
gsettings set org.pantheon.terminal.settings background '#252e32'

# scratch settings
gsettings set org.pantheon.scratch.settings style-scheme 'solarized-dark'
gsettings set org.pantheon.scratch.settings auto-indent false
gsettings set org.pantheon.scratch.settings plugins-enabled "['folder-manager', 'highlight-word-selection', 'strip-trailing-save', 'filemanager', 'contractor', 'brackets-completion']"
gsettings set org.pantheon.scratch.settings use-system-font false
gsettings set org.pantheon.scratch.settings font 'Droid Sans Mono 10'
gsettings set org.pantheon.scratch.settings show-right-margin true
