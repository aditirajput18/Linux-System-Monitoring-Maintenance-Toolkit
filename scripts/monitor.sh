#!/bin/bash

REPORT_DIR="reports"
REPORT_FILE="$REPORT_DIR/health-report.txt"

mkdir -p "$REPORT_DIR"

{
echo "===================================="
echo "       SYSTEM MONITOR DASHBOARD"
echo "===================================="

echo
echo "CPU Usage"
top -bn1 | grep "Cpu(s)"

echo
echo "Memory Usage"
free -h

echo
echo "Disk Usage"
df -h

echo
echo "Load Average"
uptime

} | tee "$REPORT_FILE"

echo
echo "✅ Health report generated successfully!"
echo "📄 Report saved to: $REPORT_FILE"