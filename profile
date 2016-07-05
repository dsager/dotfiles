export PATH=$HOME/.miniconda/bin:$HOME/.local/bin:~/.rvm/bin:/usr/local/heroku/bin:/usr/local/go/bin:$PATH

source $HOME/.aliases
#source $HOME/.xsh

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export EDITOR='vim'
# http://linux-sxs.org/housekeeping/lscolors.html
export LS_COLORS='di=1:fi=0:ln=35:pi=5:so=5:bd=5:cd=5:or=35:mi=35:ex=32'
export VAGRANT_DEFAULT_PROVIDER="libvirt"
export VAGRANT_HOME=/media/data/home/.vagrant.d

