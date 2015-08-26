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
XMODIFIERS=""
export XMODIFIERS

echo "${DIR}/bin/idea.sh"
${DIR}/bin/idea.sh

