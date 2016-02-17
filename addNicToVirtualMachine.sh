#!/bin/bash

###define
. ${HOME}/env/define.sh

virtualmachineidlist=${HOME}/env/virtualmachineidlist
webiplist=${HOME}/env/webiplist2
cntwc=$(wc -l < $webiplist)


###処理の開始
cnt=0
while [ $cnt -lt $cntwc ] 
do
    cnt=`expr $cnt + 1`

###設定リストの読み込み
#    virtualmachineid=$(sed -n ${cnt}p ${virtualmachineidlist})
    
echo -e "cloudstack-api addNicToVirtualMachine \\
--networkid ${addNICid} \\
--virtualmachineid $(sed -n ${cnt}p ${virtualmachineidlist}) \\
--ipaddress=$(sed -n ${cnt}p ${webiplist})" 

done
