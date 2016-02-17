#!/bin/bash

###include function

function test() {
cnt=0
cntwc=$(wc -l < $1)
VMcmd=$2

echo ---cntwc---
    echo $cntwc

echo ---exec loop---

while [ $cnt -lt $cntwc ] 
do
    cnt=`expr $cnt + 1`
    echo $cnt
    machineid=$(sed -n ${cnt}p $1)
#    echo $machineid

###fanction apicommand
#    echo $3
    . ${HOME}/ecoms-script/func/$3
    apicommand

#    echo $1
#    echo "$2"
#    echo "$3"

done 

}
