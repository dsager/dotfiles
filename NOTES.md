# Notes

Various notes related to OS setup...

## pre-format checklist

- Backup SSH and GPG by running `./scripts/backup/create.sh`
- Backup IntelliJ settings (RubyMine, DataGrip, ...)
- Check git repos for uncommited stuff:
  - `~/src`
  - `~/.dotfiles`
  - `~/.password-store`

## Firefox Addons

- [uBlock Origin](https://addons.mozilla.org/en-US/firefox/addon/ublock-origin)
- [Pushbullet](https://addons.mozilla.org/en-US/firefox/addon/pushbullet)
- [German Dictionary](https://addons.mozilla.org/en-US/firefox/addon/german-dictionary)
- [Spanish Dictionary](https://addons.mozilla.org/en-US/firefox/addon/spanish-spain-dictionary)
- [HTTPS Everywhere](https://www.eff.org/files/https-everywhere-latest.xpi)
- [Privacy Badger](https://www.eff.org/files/privacy-badger-latest.xpi)
- [passff](https://addons.mozilla.org/en-US/firefox/addon/passff/)
- [Pinboardin](https://addons.mozilla.org/en-US/firefox/addon/pinboardin/)
- [gnome-shell-integration](https://addons.mozilla.org/en-US/firefox/addon/gnome-shell-integration/)

## Gnome extensions

- https://extensions.gnome.org/extension/906/sound-output-device-chooser/
- https://extensions.gnome.org/extension/307/dash-to-dock/
- https://extensions.gnome.org/extension/1031/topicons/
- https://extensions.gnome.org/extension/10/windownavigator/
- https://extensions.gnome.org/extension/15/alternatetab/
- https://extensions.gnome.org/extension/549/web-search-dialog/

## Ubuntu/nvidia installation problems

- Black screen after grub: Press `e` in grub to edit boot params, change `quiet splash` to `nomodeset`
- Might have to disable secure boot
- Switch to TTY and run `sudo ubuntu-drivers autoinstall`, reboot
- Install `compizconfig-settings-manager` & `unity`, run `ccsm`, enable Unity plugin, reboot

## Tweak Mouse Scrolling

    $ xinput set-prop 12 "Evdev Scrolling Distance" 6 1 1

