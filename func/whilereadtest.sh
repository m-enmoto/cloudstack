#!/bin/bash

function stop() {
echo "cloudstack-api stop --id ${line}"
}

while read line
do
#    echo $line
    stop 
done < $HOME/env/machineidlist

