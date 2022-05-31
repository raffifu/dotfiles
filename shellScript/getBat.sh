#!/bin/bash

data=$(acpi)
stat=$(echo $data|awk '{print $3}')
bat=$(echo $data | awk '{print $4}')
if [[ ${stat::-1} == "Discharging"  ]]
then
	echo " ${bat::-1}"
else
	echo " ${bat::-1}"
fi
