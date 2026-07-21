#!/bin/bash

echo "===================================="
echo "         SYSTEM CLEANUP"
echo "===================================="

echo "Cleaning package cache..."
sudo apt-get clean

echo
echo "Removing unnecessary packages..."
sudo apt-get autoremove -y

echo
echo "Removing old log files (older than 7 days)..."
find /var/log -type f -name "*.log" -mtime +7 -delete 2>/dev/null

echo
echo "✅ Cleanup Completed."