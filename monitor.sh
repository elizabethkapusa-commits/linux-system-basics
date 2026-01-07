#!/bin/bash
LOGFILE="system.log"
{
	echo "========================="
	echo "system snapshot: $(date)"
	echo

	echo "CPU Usage(summary):"
	top -bn1 | grep "Cpu(s)"

	echo
	echo "Memory Usage:"
	free -h

	echo
	echo "Disk Usage"
	df -h
	echo
}>> "$LOGFILE"

