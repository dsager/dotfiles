# set locales
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# general settings
COMPLETION_WAITING_DOTS="true"
unsetopt nomatch # useful for rake, where params are in brackets

# Only load fancy shell on "big" terminal/screen
if [ "$TERM" == "xterm-256color" ] || [ "$TERM" == 'screen-256color' ] || [ "$TERM" == 'xterm-kitty' ] ; then

  source $HOME/.dotfiles/external/antigen/antigen.zsh

  # oh my zsh framework
  antigen use oh-my-zsh

  # OMZ powerlevel theme
  POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
  POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
  antigen theme bhilburn/powerlevel9k powerlevel9k

  antigen bundles <<EOBUNDLES
command-not-found
extract
git
colored-man-pages
zsh-users/zsh-completions src
zsh-users/zsh-syntax-highlighting
EOBUNDLES

  # apply antigen config
  antigen apply

fi

source $HOME/.profile

# Disbale ZSH shared history
unsetopt share_history

# load compinit¬
autoload -Uz compinit && compinit -i¬

# completion scripts¬
fpath=(~/.zsh/completion $fpath)¬

### Some helper functions¬

# settings for colored man pages
man() {
  LESS_TERMCAP_md=$'\e'"[1;36m" \
  LESS_TERMCAP_me=$'\e'"[0m" \
  LESS_TERMCAP_se=$'\e'"[0m" \
  LESS_TERMCAP_so=$'\e'"[1;44;33m" \
  LESS_TERMCAP_ue=$'\e'"[0m" \
  LESS_TERMCAP_us=$'\e'"[1;32m" \
  command man "$@"
}

# simple calculator
calc() {
  awk "BEGIN{ print $* }"
}

# personal log
idid() {
  echo "[$(date --rfc-3339=seconds)] $*" >> ${HOME}/.idid.log
}
