# Kitty
kitty + complete setup fish | source

# Variables
set -x EDITOR vim
set -x LC_ALL en_US.UTF-8
set -x LANG en_US.UTF-8
set -x GOPATH $HOME/go
set -x PATH $HOME/.local/bin $GOPATH/bin $PATH

# Aliases & Abbreviations
alias ll='ls -ohF --color=auto'
alias l='ll'
alias la='ll -A'
alias lsd='tree -dL 2'
alias x='exit'
alias mv='mv -iv'
alias rm='rm -i'
alias cp='cp -i'
alias grep='grep -s --color=auto --exclude-dir=\.svn --exclude-dir=\.git'
alias vi='vim'
alias json='jq -C . | less -R'
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'

abbr -a .. "cd .."
abbr -a ... "cd ../.."
abbr -a -- - 'cd -'
abbr -a cd.. 'cd ..'
abbr -a timestamp 'date +%s'
abbr -a gst "git status"
abbr -a gp "git push"
abbr -a gf "git fetch -p"
abbr -a gb "git --no-pager branch"
abbr -a gcd "git checkout develop"
abbr -a gcm "git checkout master"

# Theme config
set -g theme_display_git yes
set -g theme_display_git_dirty yes
set -g theme_display_git_untracked yes
set -g theme_display_git_ahead_verbose yes
set -g theme_display_git_dirty_verbose yes
set -g theme_display_git_master_branch yes
set -g theme_git_worktree_support yes
set -g theme_display_vagrant no
set -g theme_display_docker_machine no
set -g theme_display_k8s_context no
set -g theme_display_hg no
set -g theme_display_virtualenv no
set -g theme_display_ruby no
set -g theme_display_user ssh
set -g theme_display_hostname ssh
set -g theme_display_vi no
set -g theme_display_date no
set -g theme_display_cmd_duration yes
set -g theme_title_display_process no
set -g theme_title_display_path yes
set -g theme_title_display_user no
set -g theme_title_use_abbreviated_path yes
set -g theme_date_format "+%a %H:%M"
set -g theme_avoid_ambiguous_glyphs yes
set -g theme_powerline_fonts yes
set -g theme_nerd_fonts no
set -g theme_show_exit_status yes
set -g default_user dani
set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_project_dir_length 0
set -g theme_newline_cursor no

