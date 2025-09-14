#!/bin/bash
# System Health Check Script

echo "===== System Health Report ====="
echo "Date: $(date)"
echo "Uptime: $(uptime -p)"
echo "CPU Load:"
uptime | awk -F'load average:' '{ print $2 }'
echo "Memory Usage:"
free -h
echo "Disk Usage:"
df -h | grep '^/dev/'
echo "Logged in Users:"
who
echo "==============================="
