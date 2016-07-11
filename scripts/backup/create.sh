#! /bin/sh

echo ""
echo ""

DIR="$( cd "$( dirname "$0" )" && pwd )"
FOLDERS="${HOME}/.ssh ${HOME}/.gnupg ${HOME}/.vpnht"
BACKUP_DIR="${DIR}/.backup-tmp"
BACKUP_ARCHIVE="${DIR}/backup.tar.gz"
BACKUP_ARCHIVE_ENC="${BACKUP_ARCHIVE}.gpg"

echo " - preparing"
rm -rf ${BACKUP_DIR}
mkdir -p ${BACKUP_DIR}

if [ -f ${BACKUP_ARCHIVE_ENC} ]; then
  echo " - decrypting old backup"
  gpg -o ${BACKUP_ARCHIVE} ${BACKUP_ARCHIVE_ENC} || { echo '   - FAILED!' ; exit 1; }

  echo " - extracting old backup"
  tar -xzf ${BACKUP_ARCHIVE} -C ${BACKUP_DIR} || { echo '   - FAILED!' ; exit 1; }
fi

echo " - running backup"
for FOLDER in $FOLDERS; do
  echo "   - ${FOLDER}"
  rsync -a ${FOLDER} ${BACKUP_DIR}
done

echo " - compressing"
tar -czf ${BACKUP_ARCHIVE} -C ${BACKUP_DIR} ./ || { echo '   - FAILED!' ; exit 1; }

echo " - encrypting"
gpg --yes -o ${BACKUP_ARCHIVE_ENC} -c ${BACKUP_ARCHIVE} || { echo '   - FAILED!' ; exit 1; }

echo " - cleaning up"
rm -rf ${BACKUP_DIR}
rm ${BACKUP_ARCHIVE}

echo ""
echo ""