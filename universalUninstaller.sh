#!/bin/bash

INSTALLED_FILES="/opt/universalInstaller/universalInstaller_installed_files"

if [ ! -f "$INSTALLED_FILES" ] ; then
    echo "Your tool isn't installed!"
    exit 0
fi

LINES=`cat $INSTALLED_FILES`
INSTALLATION_PATH="/usr/local/"

for line in $LINES ; do
    _line=${line:2}
    if [ -f ${INSTALLATION_PATH}${_line} ] && [ ! "${INSTALLATION_PATH}${_line}" == "/usr/local/share/info/dir" ] ; then
        echo "rm ${INSTALLATION_PATH}${_line}"
        sudo rm -rf ${INSTALLATION_PATH}${_line}
    fi
    if [ -L ${INSTALLATION_PATH}${_line} ] ; then
        echo "rm ${INSTALLATION_PATH}${_line}"
        sudo rm -rf ${INSTALLATION_PATH}${_line}
    fi
done

echo "rm /opt/universalInstaller/"
sudo rm -rf /opt/universalInstaller/

echo "Your tool has been successfully removed by universalUninstaller!"
