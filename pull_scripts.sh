#!/bin/bash

if [[ -f "/var/tmp/pull_scripts.sh" ]]
then
    rm -f "/var/tmp/pull_scripts.sh"
    echo "pull_scripts Was Deleted"
fi

cd /var/tmp
wget https://github.com/rnewt6926/Ingram/raw/main/pull_scripts.sh
chmod 775 pull_scripts.sh

echo "Done"
