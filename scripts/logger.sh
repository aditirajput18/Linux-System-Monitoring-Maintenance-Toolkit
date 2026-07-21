#!/bin/bash

LOGFILE="system.log"

echo "====================================" >> "$LOGFILE"
echo "System Report - $(date)" >> "$LOGFILE"
echo "====================================" >> "$LOGFILE"

echo "Hostname: $(hostname)" >> "$LOGFILE"
echo "User: $(whoami)" >> "$LOGFILE"
echo "Uptime: $(uptime)" >> "$LOGFILE"

echo >> "$LOGFILE"

echo "Disk Usage" >> "$LOGFILE"
df -h >> "$LOGFILE"

echo >> "$LOGFILE"

echo "Memory Usage" >> "$LOGFILE"
free -h >> "$LOGFILE"

echo "Log updated successfully."