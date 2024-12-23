#!/usr/bin/bash

# If the Process is running then grab it's PID otherwise exit.

PID=$(pidof "Z:\home\rin\.local\share\Steam\steamapps\common\DARK SOULS REMASTERED\DarkSoulsRemastered.exe")

if [ -z $PID ]
then
	exit 0
fi

# If the process is suspended, continue it. Otherwise suspend it.

STATE=$(ps -q $PID -o state=)

if [ $STATE = "T" ]
then
	kill -CONT $PID
else
	kill -STOP $PID
fi

exit 0

# cat /proc/${P}/status | grep State