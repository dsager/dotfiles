#! /bin/sh
VERSION="2016.2.3"
ARCHIVE="pycharm-professional-${VERSION}.tar.gz"
URL="https://download.jetbrains.com/python/${ARCHIVE}"
TOOLS_DIR="${HOME}/.local/tools"
ARCHIVE_LOCAL="${TOOLS_DIR}/${ARCHIVE}"

if [ ! -f ${ARCHIVE_LOCAL} ]; then
  wget "${URL}" -O ${ARCHIVE_LOCAL}
fi

tar -xzf ${ARCHIVE_LOCAL} -C ${TOOLS_DIR}
rm ${ARCHIVE_LOCAL}
