#!/bin/bash
echo "System Information:"
echo "Hostname: $(hostname)"
echo "CPU Info: $(lscpu)"
echo "Memory Info: $(free -h)"
echo "Disk Info: $(df -h)"