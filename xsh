#!/bin/sh

# Make the 'xsh' command available in all shells
export PATH=$HOME/.local/share/xiki/bin:$PATH

# Define some key shortcuts for quickly switching from your shell to xsh
xiki_open_key="\C-x"        # Ctrl+X to expand in xsh
xiki_tasks_key="\C-t"    # Ctrl+T to show a menu of tasks
xiki_grab_key="\C-g"        # Ctrl+G to grab commands to and from xsh
xiki_reverse_key="\C-r"     # Ctrl+R to search shell history
xiki_tab_key="\e\C-i"       # Esc, Tab to do autocomplete

# Enable the key shortcuts and the xsh wrapper function
source $HOME/.local/share/xiki/bin/.xsh
