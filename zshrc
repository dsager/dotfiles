source $HOME/.dotfiles/external/antigen/antigen.zsh

# nice directory listings
antigen bundle rimraf/k

# oh my zsh framework
antigen use oh-my-zsh

# OMZ powerlevel theme
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status rbenv time)
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir rbenv vcs)
antigen theme dritter/powerlevel9k powerlevel9k --branch=dritter/prezto
#antigen theme bhilburn/powerlevel9k powerlevel9k

# OMZ plugins
antigen bundle git
antigen bundle heroku
antigen bundle ruby
antigen bundle rails
antigen bundle gem
antigen bundle bundler
antigen bundle node
antigen bundle npm
antigen bundle vagrant
antigen apply

source $HOME/.profile

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

