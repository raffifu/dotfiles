#!/bin/bash

RESPONSE=`curl -s -X GET http://192.168.8.1/api/webserver/SesTokInfo`
COOKIE=$(echo "$RESPONSE"| grep SessionID=| cut -b 10-147)
TOKEN=$(echo "$RESPONSE"| grep TokInfo| cut -b 10-41)

REQUEST=$(curl --silent -w "%{http_code}" -b $COOKIE -H "X-Requested-With: XMLHttpRequest" http://192.168.8.1/api/monitoring/status --header "__RequestVerificationToken: $TOKEN" --header "Content-Type:text/xml")
stat=$(echo "$REQUEST" | tail -n1)
if [[  $stat == '200' ]]
then
	battery=$(echo "$REQUEST" | grep 'BatteryPercent'| tr -d "</BatteryPercent>")
	echo "  ${battery::-1}% |"
fi
