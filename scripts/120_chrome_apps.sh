#!/usr/bin/env sh

echo ""
for i in ~/.local/share/applications/chrome-*.desktop; do
  echo "------- $i"
  sed -i 's/chromium-browser --profile/chromium-browser --force-device-scale-factor=2 --profile/g' $i
done
echo ""