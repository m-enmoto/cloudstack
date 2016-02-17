#!/bin/sh

cloudstack-api listVirtualMachines -t name,id,serviceofferingname,state
#cloudstack-api listVirtualMachines
#cloudstack-api listVirtualMachines -t name,zoneid,templateid

