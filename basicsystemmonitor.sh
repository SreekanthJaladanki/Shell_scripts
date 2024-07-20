#!/bin/bash
LOG_FILE="system_monitor.log"
DATE_TIME=$(date '+%Y-%m-%d %H:%M:%S')

echo "Disk Usage at $DATE_TIME" >> $LOG_FILE
df -h >> $LOG_FILE
echo "Memory Usage at $DATE_TIME" >> $LOG_FILE
free -m >> $LOG_FILE
echo "CPU Load at $DATE_TIME" >> $LOG_FILE
uptime >> $LOG_FILE
echo "System monitoring completed. Check $LOG_FILE for details."
