#!/bin/bash

###define function

function start() {
echo "cloudstack-api startVirtualMachine --id ${MACHINEID}"
}

function stop() {
echo "cloudstack-api stopVirtualMachine --id ${MACHINEID}"
}

function destroyVirtualMachine() {
echo "cloudstack-api destroyVirtualMachine --id ${MACHINEID}"
}

#spec miteigi
function changeService() {
echo "cloudstack-api changeServiceForVirtualMachine --id ${MACHINEID} --serviceofferingid ${spec}"
}


###---exec function---

#execfun=$1
#execfunc=changeService
#execfunc=stop
execfunc=start

idlist=$HOME/env/machineidlist
###light.S1( 1CPU / 1GB RAM )
#spec=e01a9f32-55c4-4c0d-9b7c-d49a3ccfd3f6

###highcpu.L8( 4CPU / 8GB RAM )
spec=435c1aab-e796-42c7-9320-22ebdc8f50aa


###---exec loop---
while read MACHINEID
do

#   echo $MACHINEID
    $execfunc

done < $idlist

