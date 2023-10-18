#!/bin/bash

RED="\E[1;31M"
GREEN="echo -e \E[1;32m"
END="\E[0m"
$GREEN-----------Host systeminf----------------------$END
echo -e "HOSTNAME: $RED `hostname` $END"
echo -e "IPADDR: $RED `ifconfig wlan0|grep -Eo '([0-9]{1,3}\.){3}[0-9]{1,3}' |head -n1 `$END"

$GREEN-----------------------------------------------$END  
