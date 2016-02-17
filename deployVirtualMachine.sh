#!/bin/bash

###define
. ${HOME}/env/define.sh

###InstanceID
#light.S1( 1CPU / 1GB RAM )
#lightS1="b851997e-1c80-429c-9739-390e0a564989"

###env
#SERVICEOFFERINGID=${lightS1}
#TEMPLATEID="b146b607-cab3-411d-aca7-b02bb5318c52"
#TEMPLATEID="538eda72-0413-4916-8407-9cf6e02ac4d6"
#ZONEID="bcb92d62-3d5a-47cf-aba2-01a012d3db07"
#group=web
#keypair=fa
#name=weba
##ipaddress
#startvm=no

webiplist=${HOME}/env/webiplist
cntwc=$(wc -l < $webiplist)

###処理の開始
cnt=0
while [ $cnt -lt $cntwc ] 
do
    cnt=`expr $cnt + 1`

###設定リストの読み込み
    wepip=$(sed -n ${cnt}p ${webiplist})

echo -e "cloudstack-api deployVirtualMachine \\
--serviceofferingid ${SERVICEOFFERINGID} \\
--templateid ${TEMPLATEID} \\
--zoneid ${ZONEID} \\
--group ${group} \\
--keypair ${keypair} \\
--name ${name}${cnt} \\
--ipaddress=${wepip} \\
--startvm ${startvm}"

#cloudstack-api deployVirtualMachine --serviceofferingid $SERVICEOFFERINGID --templateid $TEMPLATEID --zoneid $ZONEID --group ${group} --keypair ${keypair} --name ${name}${cnt} --ipaddress=${wepip} --startvm ${startvm}

done
