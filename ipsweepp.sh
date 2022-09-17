#!/bin/bash
if ["$1" == ""]
then
echo "You forgot to specify an ip address! Please specify an ip adress to perform scanning"
echo "Syntax ./ipsweepp.sh 192.126.1"
 
else
for ip in `seq 1 254`; do
ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
done
fi



