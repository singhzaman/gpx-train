#!/bin/sh

echo "System Information:"
echo "-------------------"
echo "Current user: $(whoami)"
echo "Machine name: $(hostname)"
echo "Operating system: $(uname -a)"
echo "CPU Cores: $(lscpu | grep '^CPU(s):' | awk '{print $2}')"
echo "RAM Size: $(free -h | awk '/^Mem:/ {print $0}')"



