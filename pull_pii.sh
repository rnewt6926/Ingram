#!/bin/bash


# 
# 
# if [[ -f "/var/www/html/dvwa/hackable/uploads/PII.zip" ]]
# then
#     rm -f "/var/www/html/dvwa/hackable/uploads/PII.zip"
#     echo "PII.zip Was Deleted"
# fi
#
# 


smbclient '//192.168.122.7/Private_Files' -c 'lcd /var/tmp; get PII.zip' -W HACKYSOC -U wier%frantic-Folly3 
chmod 775 '/var/tmp/PII.zip'

smbclient '//192.168.122.7/Private_Files' -c 'lcd /var/tmp; get rogeradamsCV.doc' -W HACKYSOC -U wier%frantic-Folly3
chmod 775 '/var/tmp/rogeradamsCV.doc'

echo 'Finished'