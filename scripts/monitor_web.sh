#!/bin/bash

LOG_FILE=~/myproject/logs/web.log
echo "------ $(date) ------" >> "$LOG_FILE"

echo "Uptime:" >> "$LOG_FILE"
uptime >> "$LOG_FILE"

echo "Free Memory:" >> "$LOG_FILE"
free -m >> "$LOG_FILE"

echo "CPU Usage:" >> "$LOG_FILE"
top -bn1 | grep "Cpu(s)" >> "$LOG_FILE"

echo "" >> "$LOG_FILE"
