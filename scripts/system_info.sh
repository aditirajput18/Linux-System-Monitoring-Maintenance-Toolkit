#!/bin/bash
echo "===================================="
echo "         SYSTEM INFORMATION         " 
echo "===================================="

echo "Hostname    : $(hostname)"
echo "whoami     : $(whoami)"
echo "date        : $(date)"

echo 

echo "System Uptime"
echo "--------------"
uptime

echo 

echo "Kernel Version"
echo "--------------"
uname -a 


echo 

echo "Operatinng System"
echo "--------------"
cat /etc/os-release