path+=$HOME/.local/bin

source /etc/profile.d/apps-bin-path.sh

source $HOME/.aliases

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# rubygems user installs
if which ruby >/dev/null && which gem >/dev/null; then
  PATH="$(ruby -r rubygems -e 'puts Gem.user_dir')/bin:$PATH"
fi

export EDITOR='vim'
# http://linux-sxs.org/housekeeping/lscolors.html
export LS_COLORS='di=1:fi=0:ln=35:pi=5:so=5:bd=5:cd=5:or=35:mi=35:ex=32'

