#! /bin/bash

IP=$(dig +short myip.opendns.com @resolver1.opendns.com 2>/dev/null )

if [ $? != "0" ]; then
	IP="No internet"
fi

if pgrep -x openvpn > /dev/null; then
	echo VPN: $IP
else
	echo $IP
fi

