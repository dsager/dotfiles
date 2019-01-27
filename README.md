# dotfiles

Some scripts and notes to setup and customize my Manjaro Linux environment.
This is a constant work-in-progress, but feel to look around for anything useful...

## Usage

### Prepare on existing system

- Backup SSH keys & config
```
cd <backup folder>
tar -cz ~/.ssh | gpg --yes -c -o ./ssh-backup.tgz.gpg
```
- Backup GPG keys & config
```
cd <backup folder>
tar -cz ~/.gnupg | gpg --yes -c -o ./gnupg-backup.tgz.gp
```
- Backup other settings (e.g. RubyMine, DataGrip, ...)
- Check git repos for uncommited stuff:
  - `~/src`
  - `~/.dotfiles`
  - `~/.password-store`

### Setup new environment

- Restore SSH keys & config
```
cd ~
rm -rf .ssh
gpg -d <backup-folder>/ssh-backup.tgz.gpg | tar xz
rm <backup-folder>/ssh-backup.tgz.gpg
```
- Restore GPG keys & config
```
cd ~
rm -rf .gnupg
gpg -d <backup-folder>/gnupg-backup.tgz.gpg | tar xz
rm <backup-folder>/gnupg-backup.tgz.gpg
```
- Setup Password manager:
```
keybase login
git clone keybase://private/dsager/password-store ~/.password-store
```
- Get the dotfiles repo and run scripts
```
git clone git@github.com:dsager/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
./install
```
- Load dconf settings
```
dconf load / < ~/.dotfiles/dconf_settings
```
- Set up git workspace
```
cd ~/src && gws update
```

## Notes

- Check if there are new dconf settings be be backed up
```
dconf dump / | diff dconf_settings -
```
- [Fix annoying Firefox/Textbox issue with dark GTK theme](https://www.mkammerer.de/blog/gtk-dark-theme-and-firefox/)
- Additional Gnome extensions
  - https://extensions.gnome.org/extension/906/sound-output-device-chooser/

## License

The MIT License (MIT)
