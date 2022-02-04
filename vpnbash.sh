#!/bin/bash
htbip=$(ip addr | grep -E "(tun0|tap0)" | grep inet | grep -E "(10.|172.)" | tr -s " " | cut -d " " -f 3 | cut -d "/" -f 1)

if [[ $htbip == *"10."* || $htbip == *"172."* ]]
then
   echo "$htbip"
else
   echo ""
fi
