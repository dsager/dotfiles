#! /usr/bin/env sh

echo "
"

DIR="$( cd "$( dirname "$0" )" && pwd )"
BACKUP_DIR="${DIR}/.backup-tmp"
BACKUP_ARCHIVE="${DIR}/backup.tar.gz"
BACKUP_ARCHIVE_ENC="${BACKUP_ARCHIVE}.gpg"

if [ -f ${BACKUP_ARCHIVE_ENC} ]; then
  echo " - preparing"
  rm -rf ${BACKUP_DIR}
  mkdir -p ${BACKUP_DIR}

  echo " - decrypting old backup"
  gpg -o ${BACKUP_ARCHIVE} ${BACKUP_ARCHIVE_ENC} || { echo '   - FAILED!' ; exit 1; }

  echo " - extracting old backup"
  tar -xzf ${BACKUP_ARCHIVE} -C ${BACKUP_DIR} || { echo '   - FAILED!' ; exit 1; }
  rm ${BACKUP_ARCHIVE}
  cd ${BACKUP_DIR}

  echo "!!! DON'T FORGET TO REMOVE ${BACKUP_DIR} !!!"
else 
  echo "NO BACKUP FOUND"
fi

echo "
"
