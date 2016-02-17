#!/bin/sh

echo "enter? (start/stop/destroy) "

read answer

case $answer in
    start)
        VMcmd=startVirtualMachine
        ;;
    stop)
        VMcmd=stopVirtualMachine
        ;;
    destroy)
        VMcmd=destroyVirtualMachine
        ;;
    *)
        echo -e "cannot understand $answer.\n"
        ;;
esac

cloudstack-api $VMcmd --id 9f85217e-6757-4fa7-98f3-79c5acab5e17
cloudstack-api $VMcmd --id f15f360a-cd76-438c-911c-3f6a5b0b80d7
cloudstack-api $VMcmd --id 04153641-60b7-43bf-bc47-9ae250bcbefc
cloudstack-api $VMcmd --id 2057a4f9-998b-4887-adaa-f3731308e713
cloudstack-api $VMcmd --id 96642178-2dae-485b-a267-5a578769a22b
cloudstack-api $VMcmd --id 86cd8838-b4ae-4818-8432-302b996ede50
cloudstack-api $VMcmd --id dfc7fb79-4d07-4888-bf99-7a9df1534df5
cloudstack-api $VMcmd --id 8369a849-ce2b-4451-a18f-91c1eebe93cf
