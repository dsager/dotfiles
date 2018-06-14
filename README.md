# dotfiles

Some scripts and notes to setup and customize my Linux environment (Ubuntu 18.04).

This is opinionated and a constant WIP, but feel to look around anyway...

## Usage

### Prepare old system before formatting

- Backup SSH and GPG by running `./scripts/backup/create.sh`
- Backup IntelliJ settings (RubyMine, DataGrip, ...)
- Check git repos for uncommited stuff:
  - `~/src`
  - `~/.dotfiles`
  - `~/.password-store`

### Setup new environment

Restore SSH & GPG keys:
```
cd $SOME_PEN_DRIVE/backup
./restore.sh

rm -rf ~/.ssh
mv .backup-tmp/.ssh ~/

rm -rf ~/.gnupg/
mv .backup-tmp/.gnupg/ ~/

rm -rf .backup-tmp/
```

Password manager:
```
git clone ssh://git@bitbucket.org/dsager/password-store.git ~/.password-store
sudo apt install pass
```

Get the dotfiles repo and run desired scripts:
```
sudo apt install git
git clone git@github.com:dsager/dotfiles.git ~/.dotfiles

~/.dotfiles/scripts/setup/base_packages.sh
~/.dotfiles/scripts/setup/pkg_graphics.sh

~/.dotfiles/scripts/setup/mount_data_laptop.sh
# or mount_data_pc.sh if at home...

~/.dotfiles/scripts/dotfiles.sh
~/.dotfiles/scripts/setup/set_shell.sh

~/.dotfiles/scripts/setup/030_rvm.sh
rvm install 2.3
rvm use 2.3 --default
~/.dotfiles/scripts/setup/031_tmuxinator.sh
```

Load dconf settings
```
dconf load / < ~/.dotfiles/dconf_settings
```

Set up git workspace
```
cd ~/src && gws update
```

## Notes

Using the https URL is easier on a new machine as no SSH keys are needed. To work on the repo later on, change the remote URL to ssh via
```
git remote set-url origin git@github.com:dsager/dotfiles.git
```

Check if there are new dconf settings be be backed up:
```
dconf dump / | diff dconf_settings -
```

### Firefox Addons

- [uBlock Origin](https://addons.mozilla.org/en-US/firefox/addon/ublock-origin)
- [Pushbullet](https://addons.mozilla.org/en-US/firefox/addon/pushbullet)
- [German Dictionary](https://addons.mozilla.org/en-US/firefox/addon/german-dictionary)
- [Spanish Dictionary](https://addons.mozilla.org/en-US/firefox/addon/spanish-spain-dictionary)
- [HTTPS Everywhere](https://www.eff.org/files/https-everywhere-latest.xpi)
- [Privacy Badger](https://www.eff.org/files/privacy-badger-latest.xpi)
- [passff](https://addons.mozilla.org/en-US/firefox/addon/passff/)
- [Pinboardin](https://addons.mozilla.org/en-US/firefox/addon/pinboardin/)
- [gnome-shell-integration](https://addons.mozilla.org/en-US/firefox/addon/gnome-shell-integration/)

### Gnome extensions

- https://extensions.gnome.org/extension/906/sound-output-device-chooser/
- https://extensions.gnome.org/extension/307/dash-to-dock/
- https://extensions.gnome.org/extension/1031/topicons/

### Ubuntu/nvidia installation problems

- Black screen after grub: Press `e` in grub to edit boot params, change `quiet splash` to `nomodeset`
- Might have to disable secure boot
- Switch to TTY and run `sudo ubuntu-drivers autoinstall`, reboot
- Install `compizconfig-settings-manager` & `unity`, run `ccsm`, enable Unity plugin, reboot

### Tweak Mouse Scrolling

```
xinput set-prop 12 "Evdev Scrolling Distance" 6 1 1
```

## Recources

A brief list of helpful tools and resources:

- [mathiasbynens' dotfiles](https://github.com/mathiasbynens/dotfiles)
- [anishathalye's dotfiles](https://github.com/anishathalye/dotfiles)
- [dotbot](https://github.com/anishathalye/dotbot)
- [gws](https://github.com/StreakyCobra/gws)
- [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh/)
- [powerlevel9k theme](https://github.com/bhilburn/powerlevel9k)
- [antigen](https://github.com/zsh-users/antigen.git)
- [tmuxinator](https://github.com/tmuxinator/tmuxinator)

Big thanks to all authors and contributors!

## License

The MIT License (MIT)
