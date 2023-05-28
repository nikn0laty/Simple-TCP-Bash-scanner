#!/bin/bash -

host=$1
echo "---[Simple TCP Bash scanner]---"
if [ $# -ne 0 ]
then
    for port in $(seq 1 65535)
    do
        echo >/dev/null 2>&1 < /dev/tcp/${host}/${port}      
        if [[ $? -eq 0 ]]
        then
            echo "$host:$port/tcp is open"
        fi
    done 
    echo "Done"
else
    echo "Please specify IP address, for example: ./tcp_bash_scanner.sh 127.0.0.1"
fi
