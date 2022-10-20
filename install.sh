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
ln -s "${HOME}/.gitignore_global"                 "${BASEDIR}/gitignore_global"                          || true
ln -s "${HOME}/.gitconfig"                        "${BASEDIR}/gitconfig"                                 || true
ln -s "${HOME}/.gitconfig_devex"                  "${BASEDIR}/gitconfig_devex"                           || true
ln -s "${HOME}/.wgetrc"                           "${BASEDIR}/wgetrc"                                    || true
ln -s "${HOME}/.curlrc"                           "${BASEDIR}/curlrc"                                    || true
ln -s "${HOME}/.psqlrc"                           "${BASEDIR}/psqlrc"                                    || true
ln -s "${HOME}/.vimrc"                            "${BASEDIR}/vimrc"                                     || true
ln -s "${HOME}/.irbrc"                            "${BASEDIR}/irbrc"                                     || true
ln -s "${HOME}/.npmrc"                            "${BASEDIR}/npmrc"                                     || true
ln -s "${HOME}/.pryrc"                            "${BASEDIR}/irbrc"                                     || true
ln -s "${HOME}/.projects.gws"                     "${BASEDIR}/src/projects.gws"                          || true
ln -s "${HOME}/.local/bin/update"                 "${BASEDIR}/scripts/commands/update_system.sh"         || true
ln -s "${HOME}/.local/bin/friday_links"           "${BASEDIR}/scripts/commands/friday_links.sh"          || true
ln -s "${HOME}/.local/bin/ghpr"                   "${BASEDIR}/scripts/commands/devex_pull_request.sh"    || true
ln -s "${HOME}/.local/bin/gnomeshell_extension"   "${BASEDIR}/scripts/commands/gnomeshell_extension.sh"  || true
ln -s "${HOME}/.local/bin/mount_nas"              "${BASEDIR}/scripts/commands/mount_nas.sh"             || true
ln -s "${HOME}/.config/fish/config.fish"          "${BASEDIR}/config/fish/config.fish"                   || true
ln -s "${HOME}/.config/fish/fishfile"             "${BASEDIR}/config/fish/fishfile"                      || true
ln -s "${HOME}/.config/ulauncher"                 "${BASEDIR}/config/ulauncher"                          || true
ln -s "${HOME}/.idid.log"                         "${HOME}/Dropbox/notes/idid.log"                       || true

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

# Install packages from the Arc User Repository (AUR)
# TODO: remove packages that are already install, to avoid re-building them
# pamac list --explicitly-installed --quiet | wc -l
printf "\n======================================================================\nBUILD AUR PACKAGES\n"
PACKAGES=$(cat "${BASEDIR}/packages/aur.txt" | grep -v '#' | grep .)
#pamac build "${PACKAGES}"
echo "BUILD ${PACKAGES}"
