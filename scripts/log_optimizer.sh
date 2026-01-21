#!/bin/bash
# Cleans up logs older than 30 days to optimize disk costs

TARGET_DIR="/var/log/myapp"
echo "Optimizing storage in $TARGET_DIR..."

find $TARGET_DIR -name "*.log" -type f -mtime +30 -exec rm -f {} \;

echo "Storage Optimization Complete."
