#!/bin/bash

echo "===================================="
echo "       NETWORK MONITORING"
echo "===================================="

echo
echo "IP Address"
hostname -I

echo
echo "Network Interfaces"
ip addr

echo
echo "Active Connections"
ss -tuln

echo
echo "Internet Connectivity"

if ping -c 4 google.com > /dev/null
then
    echo "✅ Internet is reachable."
else
    echo "❌ No Internet Connection."
fi