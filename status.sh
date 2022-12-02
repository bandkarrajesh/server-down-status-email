#!/bin/bash
 
myvar=$(wget --no-check-certificate --spider -S "https://123.123.123.123" 2>&1 | grep "HTTP/" | awk '{print $2}')
 
if [ $myvar == '200' ]
then
    echo "Server1 http status : $myvar is OK"  > /dev/null
else
    echo "Server1 http status : $myvar is not OK" | mail -v -s "Server 1 Down" admin-user@email.in
fi
