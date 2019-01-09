# dotfiles

Some scripts and notes to setup and customize my Manjaro Linux environment.
This is a constant work-in-progress, but feel to look around for anything useful...

## Usage

### Prepare on existing system

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
keybase login
git clone keybase://private/dsager/password-store ~/.password-store
```

Get the dotfiles repo and run desired scripts:
```
git clone git@github.com:dsager/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
./install
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

Fix annoying Firefox/Textbox issue with dark GTK theme:
https://www.mkammerer.de/blog/gtk-dark-theme-and-firefox/

### Gnome extensions

- https://extensions.gnome.org/extension/906/sound-output-device-chooser/

## License

The MIT License (MIT)
