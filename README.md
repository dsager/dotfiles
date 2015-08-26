# dotfiles

Some stuff to setup and customize my working environment.
It's opinionated and a constant WIP, but feel free to take over what you like...

## Usage

    # load and set up dotfiles
    mkdir -p ~/src/own && cd ~/src/own
    git clone git@github.com:dsager/dotfiles.git
    ./dotfiles/install

    # set up git workspace
    cd ~/src && gws update

    # install packages
    ~/.dotfiles/install_scripts/setup.sh

## Special App Settings

### Firefox

- [uBlock Origin]](https://addons.mozilla.org/en-US/firefox/addon/ublock-origin)
- [LastPass](https://addons.mozilla.org/en-US/firefox/addon/lastpass-password-manager)
- [Pushbulet](https://addons.mozilla.org/en-US/firefox/addon/pushbullet/)

### Spotify

To set proper device scaling for HiDPI run client with `--force-device-scale-factor=2`

### IntelliJ IDEA

- Download archive and extract into `/opt`
- Run `~/.local/bin/idea.sh`
- Create desktop entry
- Edit `~/.local/share/applications/jetbrains-idea.desktop` and point `Exec` to `~/.local/bin/idea.sh`

## Acknowledgements

To get started I copied shamelessly from [mathiasbynens](https://github.com/mathiasbynens/dotfiles)'
and [anishathalye](https://github.com/anishathalye/dotfiles)'s dotfiles...

Thanks to the authors and contributors of the following awesome tools:
- [dotbot](https://github.com/anishathalye/dotbot)
- [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh/)
- [mackup](https://github.com/lra/mackup)
- [gws](https://github.com/StreakyCobra/gws)

## License

The MIT License (MIT)
