#! /bin/sh
VERSION="2016.3.4"
ARCHIVE="datagrip-${VERSION}.tar.gz"
URL="https://download.jetbrains.com/datagrip/${ARCHIVE}"
TOOLS_DIR="${HOME}/.local/tools"
ARCHIVE_LOCAL="${TOOLS_DIR}/${ARCHIVE}"

if [ ! -f ${ARCHIVE_LOCAL} ]; then
  wget "${URL}" -O ${ARCHIVE_LOCAL}
fi

tar -xzf ${ARCHIVE_LOCAL} -C ${TOOLS_DIR}
rm ${ARCHIVE_LOCAL}
