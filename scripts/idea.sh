#! /bin/sh

# get directory
BUILD=`ls /opt | grep "idea-" | tail -n1`
DIR="/opt/${BUILD}"

# set hidpi options if necessary
grep 'hidpi' "${DIR}/bin/idea64.vmoptions" > /dev/null
if [ $? -eq 1 ]; then
  echo "setting hidpi option"
  echo "-Dhidpi=true" | sudo tee -a "${DIR}/bin/idea64.vmoptions"
fi

# Workaround to prevent keyboard input from being blocked by IBus
grep 'XMODIFIERS' "${DIR}/bin/idea.sh" > /dev/null
if [ $? -eq 1 ]; then
  echo "Missing 'export XMODIFIERS=\"\"' in ${DIR}/bin/idea.sh"
fi



