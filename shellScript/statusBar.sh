#!/bin/bash

while true
do
	mifi=`~/dev/shellScript/getMiFiBat.sh`
	laptop=`~/dev/shellScript/getBat.sh`
	date=`date +"%a, %d %b %Y |  %R"`
	sound=$(amixer | awk -F '[][]' '/t: Playback /{vol="("$2")"; print vol}' | tr -d "\n")
	xsetroot -name "  $sound |$mifi  $date WIB | $laptop"
	sleep 10
done
