#!/bin/bash

INSTALL_PATH=$1

if test -z ${INSTALL_PATH}; then
    echo "Usage: ./builder.sh path/to/binaries/files/your/tool"
    exit -1;
fi

cp universalInstaller.sh.in universalInstaller.sh
chmod 755 universalInstaller.sh

tar cpzfP archive.tar.gz -C ${INSTALL_PATH}/ .
cat archive.tar.gz >> universalInstaller.sh
rm -rf archive.tar.gz
