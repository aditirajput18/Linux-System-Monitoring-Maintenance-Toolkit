#!/bin/bash
echo "===================================="
echo "         PROCESS MONITORING         " 
echo "===================================="

echo 

echo "Top 15 CPU Consuming Processes"
echo "------------------------------"
ps -eo pid,user,%cpu,%mem.comm --sort=-%cpu | head -16

echo 

echo "Top 15 Memory Consuming Processes"
echo "------------------------------"
ps -eo pid,user,%mem,%cpu.comm --sort=-%mem | head -16

echo 
if command -v htop &>/dev/null; then
    echo "aunching htop..."
    htop
else 
    echo "htop is not installed"
    echo "Install it using:"
    echo "sudo apt install htop"
fi
