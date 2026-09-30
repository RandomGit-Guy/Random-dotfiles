#!/usr/bin/env bash

# If LAN is active then show LAN Symbol
if nmcli -t -f DEVICE,STATE dev | grep -q "^e.*:connected"; then
	echo "󰌗"
	exit 0
fi

# If LAN isn't active then set the variable "$SIGNAL" to the percentage of the wlan signal 
SIGNAL=$(nmcli -f IN-USE,SIGNAL dev wifi | grep "^\*" | awk '{print $2}')

# If the variable is empty theres no connection
if [ -z "$SIGNAL" ]; then
	echo "󰤭"
	exit
fi

# If "$SIGNAL" is -ge 75 then level = 75%+
if [ "$SIGNAL" -ge 75 ]; then
	echo "󰤨"
# If "$SIGNAL" is -ge 50 then level = 50%+
elif [ "$SIGNAL" -ge 50 ]; then
	echo "󰤥"
# If "$SIGNAL" is -ge 25 then level = 25%+
elif [ "$SIGNAL" -ge 25 ]; then
	echo "󰤢"
# If "$SIGNAL" isn't any from above than level = >25%
else 
	echo "󰤟"
fi
