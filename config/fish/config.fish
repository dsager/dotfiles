# Variables
set -x EDITOR vim
set -x LC_ALL en_US.UTF-8
set -x LANG en_US.UTF-8
set -x GOPATH $HOME/go
set -x PATH $HOME/.local/bin $GOPATH/bin $PATH
set -x USER_ID (id -u)

# Aliases & Abbreviations
alias ll='ls -ohF --color=auto'
alias l='ll'
alias la='ll -A'
alias lsd='tree -dL 2'
alias x='exit'
alias mv='mv --interactive --verbose'
alias rm='rm --interactive --verbose'
alias cp='cp --interactive --verbose --recursive'
alias grep='grep --no-messages --color=auto --exclude-dir=\.git'
alias vi='vim'
alias json='jq -C . | less -R'
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'
alias ssh='env TERM=xterm-256color ssh'
alias passqr="head -n1 | tr -d '\n' | qrencode -tUTF8 -o-"

abbr -a diskusage "du -h --max-depth=1"

abbr -a .. "cd .."
abbr -a ... "cd ../.."
abbr -a -- - 'cd -'
abbr -a cd.. 'cd ..'

abbr -a timestamp 'date +%s'

abbr -a gst "git status"
abbr -a gp "git push"
abbr -a gf "git fetch --prune --prune-tags"
abbr -a gb "git --no-pager branch"
abbr -a gcd "git checkout develop"
abbr -a gcm "git checkout master"

abbr -a dc "docker-compose"
abbr -a dcb "docker-compose build"
abbr -a dcp "docker-compose ps"
abbr -a dcr "docker-compose restart"
abbr -a dcu "docker-compose up -d"
abbr -a dirb "docker run -it --rm ruby:latest irb"

abbr -a kd "kubectl --context develop.k8s.local -n develop"
abbr -a km "kubectl --context master.k8s.local -n master"
abbr -a kp "kubectl --context prod.k8s.local -n production"

# Theme config
set -g theme_display_git yes
set -g theme_display_git_dirty yes
set -g theme_display_git_untracked yes
set -g theme_display_git_ahead_verbose yes
set -g theme_display_git_dirty_verbose yes
set -g theme_display_git_default_branch no
set -g theme_git_worktree_support no
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
set -g theme_color_scheme dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_project_dir_length 0
set -g theme_newline_cursor no

# Atuin
atuin init --disable-up-arrow fish | source
