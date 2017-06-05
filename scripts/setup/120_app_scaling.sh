#!/usr/bin/env sh

# chrome apps
echo ""
for i in ~/.local/share/applications/chrome-*.desktop; do
  echo "------- $i"
  sed -i 's/chromium-browser --profile/chromium-browser --force-device-scale-factor=2 --profile/g' $i
done

# spotify
i="/usr/share/applications/spotify.desktop"
if [ -f "$i" ]; then
  echo "------- $i"
  sudo sed -i 's/^Exec=spotify/Exec=spotify --force-device-scale-factor=2/g' $i
fi

# chromium
i="/usr/share/applications/chromium-browser.desktop"
if [ -f "$i" ]; then
  echo "------- $i"
  sudo sed -i 's/^Exec=chromium-browser/Exec=chromium-browser --force-device-scale-factor=2/g' $i
fi

# slack
i="/usr/share/applications/slack.desktop"
if [ -f "$i" ]; then
  echo "------- $i"
  sudo sed -i 's/^Exec=\/usr\/bin\/slack/Exec=\/usr\/bin\/slack --force-device-scale-factor=2/g' $i
fi

echo ""
