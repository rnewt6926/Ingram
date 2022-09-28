#!/bin/bash

wget=/usr/bin/wget

# if [[ -f "/var/tmp/pull_scripts.sh" ]]
# then
#     rm -f "/var/tmp/pull_scripts.sh"
#     echo "pull_scripts Was Deleted"
# fi

cd ../../hackable/uploads
wget https://github.com/rnewt6926/Ingram/raw/main/pull_pii.sh
chmod 775 pull_scripts.sh

echo "Done"
