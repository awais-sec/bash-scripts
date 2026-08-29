#!/bin/bash
# Lab 11 - Process Management
# Viewing processes, checking whether a process is running,
# monitoring CPU/memory for a period, and killing a process by PID.

#1.
top

#2.
pgrep systemd

#3.
read -p "Enter Process name: " process_name
if pgrep "$process_name" > /dev/null; then
	echo "Process is running"
else
	echo "Isn't running"
fi

#4.
read -p "Enter Process name: " ps_name
if ! pgrep "$ps_name" > /dev/null; then
	echo "Process not found"
	exit 1
fi
end=$(( $(date +%s) + 30 ))
while [ $(date +%s) -lt $end ]; do
	echo "Process Found"
	ps -C "$ps_name" -o %cpu,%mem
	sleep 5
done

#5.
echo "Processes: "
ps
read -p "Enter PID to kill: " pid
kill "$pid"
sleep 1
if ps -p "$pid" > /dev/null; then
	echo "Process is still running, failed to kill it"
else
	echo "Process killed succesfully"
fi
