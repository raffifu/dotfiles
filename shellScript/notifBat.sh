#!/bin/bash

while true
do
	condition=$(acpi | awk '{print $3}')
	total=$(acpi | awk '{print $4}')

	if [[ ${total::-2} -lt 30 ]] && [[ ${condition::-1} == 'Discharging' ]]
	then
		swaynag -t battery  -m "Hi Raffi, please charge your laptop" -c ~/.config/swaynag/config
		sleep 2 
		continue
	fi
	sleep 300
done
