#!/bin/bash

# Moderate shell script for system monitoring

# Define the log file
LOG_FILE="system_monitor.log"

# Get the current date and time
DATE_TIME=$(date '+%Y-%m-%d %H:%M:%S')

# Function to check disk usage
check_disk_usage() {
  echo "Disk Usage at $DATE_TIME" >> $LOG_FILE
  df -h >> $LOG_FILE
  echo "-----------------------------" >> $LOG_FILE
}

# Function to check memory usage
check_memory_usage() {
  echo "Memory Usage at $DATE_TIME" >> $LOG_FILE
  free -m >> $LOG_FILE
  echo "-----------------------------" >> $LOG_FILE
}

# Function to check CPU load
check_cpu_load() {
  echo "CPU Load at $DATE_TIME" >> $LOG_FILE
  uptime >> $LOG_FILE
  echo "-----------------------------" >> $LOG_FILE
}

# Execute the functions
check_disk_usage
check_memory_usage
check_cpu_load

# Output
echo "System monitoring completed. Check $LOG_FILE for details."
