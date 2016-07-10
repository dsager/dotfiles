#! /bin/sh
VERSION="2016.1.2"
ARCHIVE="RubyMine-${VERSION}.tar.gz"
URL="https://download.jetbrains.com/ruby/${ARCHIVE}"
TOOLS_DIR="${HOME}/.local/tools"
ARCHIVE_LOCAL="${TOOLS_DIR}/${ARCHIVE}"

ls -l ${ARCHIVE_LOCAL}

if [ ! -f ${ARCHIVE_LOCAL} ]; then
  wget "${URL}" -O ${ARCHIVE_LOCAL}
fi

tar -xzf ${ARCHIVE_LOCAL} -C ${TOOLS_DIR}
rm ${ARCHIVE_LOCAL}