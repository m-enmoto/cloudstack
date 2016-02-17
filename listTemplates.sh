#!/bin/sh

cloudstack-api listTemplates --templatefilter self -t id,name,zonename,zoneid 
#cloudstack-api listTemplates --templatefilter self 
