#!/usr/bin/env sh

set -e

CONFIG=".dotfiles.yml"
DOTBOT_DIR="external/dotbot"

DOTBOT_BIN="bin/dotbot"
SCRIPTDIR="$(dirname $(readlink -f $0))"
BASEDIR="$(cd ${SCRIPTDIR}/.. && pwd)"

cd "${BASEDIR}"
git submodule update --init --recursive "${DOTBOT_DIR}"

"${BASEDIR}/${DOTBOT_DIR}/${DOTBOT_BIN}" -d "${BASEDIR}" -c "${CONFIG}" "${@}"
