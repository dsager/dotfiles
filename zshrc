# set locales
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# general settings
COMPLETION_WAITING_DOTS="true"

source $HOME/.dotfiles/external/antigen/antigen.zsh

# oh my zsh framework
antigen use oh-my-zsh

# OMZ powerlevel theme
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(status dir vcs)
antigen theme bhilburn/powerlevel9k powerlevel9k

antigen bundles <<EOBUNDLES
command-not-found
extract
git
heroku
ruby
rails
gem
bundler
node
npm
golang
vagrant
tmux
tmuxinator
colored-man-pages
zsh-users/zsh-completions src
zsh-users/zsh-history-substring-search
zsh-users/zsh-syntax-highlighting
EOBUNDLES

# apply antigen config
antigen apply

source $HOME/.profile

# Disbale ZSH shared history
unsetopt share_history

# colored man pages
man() {
  LESS_TERMCAP_md=$'\e'"[1;36m" \
  LESS_TERMCAP_me=$'\e'"[0m" \
  LESS_TERMCAP_se=$'\e'"[0m" \
  LESS_TERMCAP_so=$'\e'"[1;44;33m" \
  LESS_TERMCAP_ue=$'\e'"[0m" \
  LESS_TERMCAP_us=$'\e'"[1;32m" \
  command man "$@"
}


calc() {
  awk "BEGIN{ print $* }"
}

# The next line updates PATH for the Google Cloud SDK.
if [ -f ${HOME}/.local/tools/google-cloud-sdk/path.zsh.inc ]; then
  source "${HOME}/.local/tools/google-cloud-sdk/path.zsh.inc"
fi

# The next line enables shell command completion for gcloud.
if [ -f ${HOME}/.local/tools/google-cloud-sdk/completion.zsh.inc ]; then
  source "${HOME}/.local/tools/google-cloud-sdk/completion.zsh.inc"
fi
