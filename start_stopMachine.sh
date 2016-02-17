#!/bin/sh

echo "VM start or stop ? (start/stop) "

read answer

case $answer in
    start)
        VMcmd=startVirtualMachine
        ;;
    stop)
        VMcmd=stopVirtualMachine
        ;;
    *)
        echo -e "cannot understand $answer.\n"
        ;;
esac

machineidlist=${HOME}/env/machineid
cntwc=$(wc -l < $machineidlist)

###処理の開始
cnt=0
while [ $cnt -lt $cntwc ] 
do
    cnt=`expr $cnt + 1`

###設定リストの読み込み
    machineid=$(sed -n ${cnt}p ${machineidlist})

cloudstack-api $VMcmd --id ${machineid}

done
