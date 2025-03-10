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
tar -cz ~/.gnupg | gpg --yes -c -o ./gnupg-backup.tgz.gpg
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
gpg -d <backup-folder>/ssh-backup.tgz.gpg | tar -xz --directory=/
rm <backup-folder>/ssh-backup.tgz.gpg
```
- Restore GPG keys & config
```
cd ~
rm -rf .gnupg
gpg -d <backup-folder>/gnupg-backup.tgz.gpg | tar -xz --directory=/
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
./install.sh
```
- Set up git workspace
```
cd ~/src && gws update
```
- Set up AWS CLI
```
aws configure
```
- Set up `kubectl` by adding the config file `~/.kube/config`

## Notes

- Restart gnome shell from other TTY: `killall -SIGQUIT gnome-shell`
- Make laptop go into deep sleep when suspending:
  - check `/sys/power/mem_sleep` for default mode
  - use `sudo journalctl -n1000 | grep "PM: suspend" | tail` to check recent behavior
  - change default by adding `mem_sleep_default=deep` to kernel command line (e.g. via [grub](https://wiki.archlinux.org/index.php/kernel_parameters#GRUB))
- Cleanup disk space:
  - Remove package cache with `sudo pacman -Scc`
  - Remove orphan packages with `sudo pacman -Rns (pacman -Qtdq)`
  - Wipe cache with `rm -rf ~/.cache/*`
  - Cleanup docker with `docker system prune` & `docker volume prune`
  - Cleanup systemd journal with `sudo journalctl --vacuum-size=50M`

## License

The MIT License (MIT)
