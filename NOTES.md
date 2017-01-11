# Notes

Various notes related to OS setup...

## pre-format checklist

- Backup sensitive folders by running `./scripts/backup/create.sh`:
  - `~/.ssh`
  - `~/.gpg`
  - `~/.vpnht`
- Backup IntelliJ settings (RubyMine, DataGrip, ...)
- Check git repos for uncommited stuff:
  - `~/src`
  - `~/.dotfiles`
  - `~/.password-store`

## Firefox Addons

- [uBlock Origin](https://addons.mozilla.org/en-US/firefox/addon/ublock-origin)
- [Pushbullet](https://addons.mozilla.org/en-US/firefox/addon/pushbullet)
- [JSONView](https://addons.mozilla.org/en-US/firefox/addon/jsonview)
- [German Dictionary](https://addons.mozilla.org/en-US/firefox/addon/german-dictionary)
- [Spanish Dictionary](https://addons.mozilla.org/en-US/firefox/addon/spanish-spain-dictionary)
- [HTTPS Everywhere](https://www.eff.org/files/https-everywhere-latest.xpi)
- [Privacy Badger](https://www.eff.org/files/privacy-badger-latest.xpi)
- [passff](https://addons.mozilla.org/en-US/firefox/addon/passff/)

## Gnome extensions

- https://extensions.gnome.org/extension/906/sound-output-device-chooser/
- https://extensions.gnome.org/extension/307/dash-to-dock/
- https://extensions.gnome.org/extension/1031/topicons/

## Ubuntu/nvidia installation problems

- Black screen after grub: Press `e` in grub to edit boot params, change `quiet splash` to `nomodeset`
- Might have to disable secure boot
- Switch to TTY and run `sudo ubuntu-drivers autoinstall`, reboot
- Install `compizconfig-settings-manager` & `unity`, run `ccsm`, enable Unity plugin, reboot

## Tweak Mouse Scrolling

    $ xinput set-prop 12 "Evdev Scrolling Distance" 6 1 1

