#!/bin/bash
echo "===================================="
echo "         DISK MONITORING         " 
echo "===================================="

echo 

echo "Filesystem Usage"
echo "------------------------------"
df -h

echo 

echo "Current Directory Size"
echo "------------------------------"
du -sh

echo 
echo "Top 10 Largest Directories"
echo "--------------------------"
du -h --max-depth=1 2>/dev/null | sort -hr | head -10

