# general settings
COMPLETION_WAITING_DOTS="true"

source $HOME/.dotfiles/external/antigen/antigen.zsh

# oh my zsh framework
antigen use oh-my-zsh

# OMZ powerlevel theme
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status rbenv time)
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir rbenv vcs)
antigen theme dritter/powerlevel9k powerlevel9k --branch=dritter/prezto
#antigen theme bhilburn/powerlevel9k powerlevel9k

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
vagrant
tmux
tmuxinator
colored-man
zsh-users/zsh-completions src
zsh-users/zsh-history-substring-search
zsh-users/zsh-syntax-highlighting
rimraf/k
EOBUNDLES

# apply antigen config
antigen apply

source $HOME/.profile

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

