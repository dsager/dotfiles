# Notes

Various notes on all kinds of things related to OS setup...

### Firefox Addons

- [uBlock Origin]](https://addons.mozilla.org/en-US/firefox/addon/ublock-origin)
- [LastPass](https://addons.mozilla.org/en-US/firefox/addon/lastpass-password-manager)
- [Pushbullet](https://addons.mozilla.org/en-US/firefox/addon/pushbullet/)

### HiDPI

Several apps support the parameter `--force-device-scale-factor=2` for proper 
scaling (Spotify, Chromium & Chromium Apps).

### IntelliJ IDEA

- Download archive and extract into `/opt`
- Run `~/.local/bin/idea.sh`
- Create desktop entry
- Edit `~/.local/share/applications/jetbrains-idea.desktop` and point `Exec` to `~/.local/bin/idea.sh`

### Tweak Mouse Scrolling

    $ xinput set-prop 12 "Evdev Scrolling Distance" 6 1 1

### Hybrid Graphic

- https://help.ubuntu.com/community/HybridGraphics
- http://asusm51ta-with-linux.blogspot.com.es/
