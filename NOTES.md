# Notes

Various notes on all kinds of things related to OS setup...

### Firefox Addons

- [uBlock Origin](https://addons.mozilla.org/en-US/firefox/addon/ublock-origin)
- [LastPass](https://addons.mozilla.org/en-US/firefox/addon/lastpass-password-manager)
- [Pushbullet](https://addons.mozilla.org/en-US/firefox/addon/pushbullet)
- [JSONView](https://addons.mozilla.org/en-US/firefox/addon/jsonview)
- [German Dictionary](https://addons.mozilla.org/en-US/firefox/addon/german-dictionary)
- [Spanish Dictionary](https://addons.mozilla.org/en-US/firefox/addon/spanish-spain-dictionary)
- [HTTPS Everywhere](https://www.eff.org/files/https-everywhere-latest.xpi)

### Tweak Mouse Scrolling

    $ xinput set-prop 12 "Evdev Scrolling Distance" 6 1 1

### Hybrid Graphic

- https://help.ubuntu.com/community/HybridGraphics
- http://asusm51ta-with-linux.blogspot.com.es/

When `prime-select` fails with `Error: alternatives are not set up properly`:

```
sudo update-alternatives --set x86_64-linux-gnu_gl_conf /usr/lib/nvidia-XXX-prime/ld.so.conf
sudo update-alternatives --set i386-linux-gnu_gl_conf /usr/lib/nvidia-XXX-prime/alt_ld.so.conf
```

Proprietary GPU Drivers:
https://launchpad.net/~graphics-drivers/+archive/ubuntu/ppa
