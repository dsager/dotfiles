#!/usr/bin/env sh

set -eu

BASE_DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)

"${BASE_DIR}/gsettings.d/apps.sh"
"${BASE_DIR}/gsettings.d/window-management.sh"
"${BASE_DIR}/gsettings.d/keybindings.sh"
"${BASE_DIR}/gsettings.d/dock.sh"
"${BASE_DIR}/gsettings.d/desktop-ui.sh"
"${BASE_DIR}/gsettings.d/privacy-power.sh"
"${BASE_DIR}/gsettings.d/other.sh"
