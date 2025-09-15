#! /usr/bin/env /bin/bash

set -eu

BASEDIR=$( cd "$( dirname "$0" )" && pwd )
printf "\n======================================================================\nBase directory: ${BASEDIR}\n"

# set up home directories
printf "\n======================================================================\nCREATE DIRECTORIES\n"
mkdir -p "${HOME}/.config/Code/User" \
         "${HOME}/.config/fish" \
         "${HOME}/.kube" \
         "${HOME}/.local/bin" \
         "${HOME}/.local/share" \
         "${HOME}/.local/fonts" \
         "${HOME}/.local/tools" \
         "${HOME}/.local/tools/AppImages" \
         "${HOME}/.vim/autoload" \
         "${HOME}/.vim/bundle" \
         "${HOME}/.vim/backups" \
         "${HOME}/.vim/swaps" \
         "${HOME}/NAS/Pictures" \
         "${HOME}/NAS/Archive" \
         "${HOME}/NAS/Videos" \
         "${HOME}/src"

# Remove some default home directories
printf "\n======================================================================\nREMOVE DEFAULT FOLDERS\n"
rmdir "${HOME}/Documents" || true
rmdir "${HOME}/Pictures"  || true
rmdir "${HOME}/Music"     || true
rmdir "${HOME}/Templates" || true

# Copy root level config files
printf "\n======================================================================\nCOPY ROOT LEVEL CONFIG FILES\n"
sudo cp "${BASEDIR}/config/etc/sysctl.d/99-sysctl.conf" /etc/sysctl.d/99-sysctl.conf

# link dotfiles, tools & config
printf "\n======================================================================\nSET UP SYMLINKS\n"
ln -sT "${BASEDIR}/gitignore_global"                          "${HOME}/.gitignore_global"                           || true
ln -sT "${BASEDIR}/gitconfig"                                 "${HOME}/.gitconfig"                                  || true
ln -sT "${BASEDIR}/wgetrc"                                    "${HOME}/.wgetrc"                                     || true
ln -sT "${BASEDIR}/curlrc"                                    "${HOME}/.curlrc"                                     || true
ln -sT "${BASEDIR}/psqlrc"                                    "${HOME}/.psqlrc"                                     || true
ln -sT "${BASEDIR}/vimrc"                                     "${HOME}/.vimrc"                                      || true
ln -sT "${BASEDIR}/irbrc"                                     "${HOME}/.irbrc"                                      || true
ln -sT "${BASEDIR}/irbrc"                                     "${HOME}/.pryrc"                                      || true
ln -sT "${BASEDIR}/projects.gws"                              "${HOME}/.projects.gws"                               || true
ln -sT "${BASEDIR}/scripts/commands/update_system.sh"         "${HOME}/.local/bin/update"                           || true
ln -sT "${BASEDIR}/scripts/commands/mount_nas.sh"             "${HOME}/.local/bin/mount_nas"                        || true
ln -sT "${BASEDIR}/config/Code/settings.json"                 "${HOME}/.config/Code/User/settings.json"             || true
ln -sT "${BASEDIR}/config/Code/keybindings.json"              "${HOME}/.config/Code/User/keybindings.json"          || true
ln -sT "${BASEDIR}/config/fish/config.fish"                   "${HOME}/.config/fish/config.fish"                    || true
ln -sT "${BASEDIR}/config/fish/fish_plugins"                  "${HOME}/.config/fish/fish_plugins"                   || true
ln -sT "${BASEDIR}/config/ulauncher"                          "${HOME}/.config/ulauncher"                           || true
ln -sT "${HOME}/Dropbox/notes/idid.log"                       "${HOME}/.idid.log"                                   || true

printf "\n======================================================================\nCONFIGURE GNOME\n"
"${BASEDIR}/scripts/setup/gsettings.sh"

printf "\n======================================================================\nREMOVE PACKAGES\n"
PACKAGES=$(cat "${BASEDIR}/packages/manjaro.remove.txt" | grep -v '#' | grep .)
for PACKAGE in $PACKAGES; do
  sudo pacman -R --unneeded --noconfirm --recursive --nosave "${PACKAGE}" || true
done

printf "\n======================================================================\nINSTALL PACKAGES\n"
PACKAGES=$(cat "${BASEDIR}/packages/manjaro.txt" | grep -v '#' | grep .)
sudo pamac install ${PACKAGES}

# Remove installed packages to avoid re-building them
printf "\n======================================================================\nBUILD AUR PACKAGES\n"
PACKAGES=$(pamac list --explicitly-installed --quiet | sort | comm -13 - "${BASEDIR}/packages/aur.txt" | grep -v '#')
echo "${PACKAGES}" | xargs pamac build --no-confirm
