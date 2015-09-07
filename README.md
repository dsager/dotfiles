# dotfiles

Some scripts and [notes](NOTES.md) to setup and customize my working environment (Elementary OS).

This is opinionated and a constant WIP, but feel to look around anyway...

## Usage

    # set up dotfiles folder
    git clone https://github.com/dsager/dotfiles.git ~/.dotfiles

    # use install & config scripts
    cd ./dotfiles/scripts && ls -l

    # set up git workspace
    cd ~/src && gws update

Note to myself: Using the https URL is easier on a new machine as no 
SSH keys are needed. To work on the repo later on, change the remote 
URL to ssh:

    git remote set-url origin git@github.com:dsager/dofiles.git

## Recources

A brief list of helpful tools and resources:

- [mathiasbynens' dotfiles](https://github.com/mathiasbynens/dotfiles)
- [anishathalye's dotfiles](https://github.com/anishathalye/dotfiles)
- [dotbot](https://github.com/anishathalye/dotbot)
- [mackup](https://github.com/lra/mackup)
- [gws](https://github.com/StreakyCobra/gws)
- [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh/)
- [powerlevel9k theme](https://github.com/bhilburn/powerlevel9k)
- [antigen](https://github.com/zsh-users/antigen.git)
- [vim-pathogen](https://github.com/tpope/vim-pathogen.git)
- [vim-colors-solarized](https://github.com/altercation/vim-colors-solarized.git)
- [tmuxinator](https://github.com/tmuxinator/tmuxinator)

Big thanks to all authors and contributors!

## License

The MIT License (MIT)
