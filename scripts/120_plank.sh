#!/usr/bin/env sh

echo ""
echo "------- set hide mode"
sed -i 's/HideMode=[02345]/HideMode=1/g' ~/.config/plank/dock1/settings
echo ""