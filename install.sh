#! /usr/bin/env /bin/bash

set -eu

BASEDIR=$( cd "$( dirname "$0" )" && pwd )
printf "\n======================================================================\nBase directory: ${BASEDIR}\n"

# set up home directories
printf "\n======================================================================\nCREATE DIRECTORIES\n"
mkdir -p "${HOME}/.local/bin" \
         "${HOME}/.local/share" \
         "${HOME}/.local/fonts" \
         "${HOME}/.local/tools" \
         "${HOME}/.local/tools/AppImages" \
         "${HOME}/.vim/autoload" \
         "${HOME}/.vim/bundle" \
         "${HOME}/.vim/backups" \
         "${HOME}/.vim/swaps" \
         "${HOME}/.npm/packages" \
         "${HOME}/NAS/Pictures" \
         "${HOME}/NAS/Archive" \
         "${HOME}/NAS/Videos"

# Remove some default home directories
printf "\n======================================================================\nREMOVE DEFAULT FOLDERS\n"
rmdir "${HOME}/Documents" || true
rmdir "${HOME}/Pictures"  || true
rmdir "${HOME}/Music"     || true
rmdir "${HOME}/Templates" || true

# Copy root level config files
printf "\n======================================================================\nCOPY ROOT LEVEL CONFIG FILES\n"
sudo cp "${BASEDIR}/config/etc/sysctl.d/999-inotify-watches.conf" /etc/sysctl.d/999-inotify-watches.conf
sudo cp "${BASEDIR}/config/etc/sysctl.d/99-sysctl.conf" /etc/sysctl.d/99-sysctl.conf

# link dotfiles, tools & config
printf "\n======================================================================\nSET UP SYMLINKS\n"
ln -s "${BASEDIR}/gitignore_global"                          "${HOME}/.gitignore_global"                 || true
ln -s "${BASEDIR}/gitconfig"                                 "${HOME}/.gitconfig"                        || true
ln -s "${BASEDIR}/gitconfig_devex"                           "${HOME}/.gitconfig_devex"                  || true
ln -s "${BASEDIR}/wgetrc"                                    "${HOME}/.wgetrc"                           || true
ln -s "${BASEDIR}/curlrc"                                    "${HOME}/.curlrc"                           || true
ln -s "${BASEDIR}/psqlrc"                                    "${HOME}/.psqlrc"                           || true
ln -s "${BASEDIR}/vimrc"                                     "${HOME}/.vimrc"                            || true
ln -s "${BASEDIR}/irbrc"                                     "${HOME}/.irbrc"                            || true
ln -s "${BASEDIR}/npmrc"                                     "${HOME}/.npmrc"                            || true
ln -s "${BASEDIR}/irbrc"                                     "${HOME}/.pryrc"                            || true
ln -s "${BASEDIR}/src/projects.gws"                          "${HOME}/.projects.gws"                     || true
ln -s "${BASEDIR}/scripts/commands/update_system.sh"         "${HOME}/.local/bin/update"                 || true
ln -s "${BASEDIR}/scripts/commands/friday_links.sh"          "${HOME}/.local/bin/friday_links"           || true
ln -s "${BASEDIR}/scripts/commands/devex_pull_request.sh"    "${HOME}/.local/bin/ghpr"                   || true
ln -s "${BASEDIR}/scripts/commands/mount_nas.sh"             "${HOME}/.local/bin/mount_nas"              || true
ln -s "${BASEDIR}/config/fish/config.fish"                   "${HOME}/.config/fish/config.fish"          || true
ln -s "${BASEDIR}/config/fish/fishfile"                      "${HOME}/.config/fish/fishfile"             || true
ln -s "${BASEDIR}/config/ulauncher"                          "${HOME}/.config/ulauncher"                 || true
ln -s "${HOME}/Dropbox/notes/idid.log"                       "${HOME}/.idid.log"                         || true

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
echo "${PACKAGES}" | xargs pamac build

