path+=$HOME/.miniconda/bin
path+=$HOME/.local/bin
path+=$HOME/.rvm/bin
path+=/usr/local/heroku/bin
path+=/usr/local/go/bin

source $HOME/.aliases

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

export EDITOR='vim'
# http://linux-sxs.org/housekeeping/lscolors.html
export LS_COLORS='di=1:fi=0:ln=35:pi=5:so=5:bd=5:cd=5:or=35:mi=35:ex=32'
export VAGRANT_DEFAULT_PROVIDER="libvirt"
export VAGRANT_HOME=/media/data/home/.vagrant.d

