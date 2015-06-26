source $HOME/.dotfiles/external/antigen/antigen.zsh
antigen bundle rimraf/k && antigen apply

ZSH=$HOME/.oh-my-zsh
ZSH_THEME="agnoster_custom"
CASE_SENSITIVE="true"
DISABLE_AUTO_UPDATE="true"
#UPDATE_ZSH_DAYS=7
COMPLETION_WAITING_DOTS="true"
plugins=(pip osx git node npm brew ruby rails rvm gem bundler vagrant)

source $ZSH/oh-my-zsh.sh
source $HOME/.profile

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
