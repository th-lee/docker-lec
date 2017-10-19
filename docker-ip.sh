#!/bin/bash

for CID in `/usr/bin/docker ps -q`
do
    IP=`/usr/bin/docker inspect -f "{{ .NetworkSettings.IPAddress }}" $CID`
    echo $CID $IP

done
