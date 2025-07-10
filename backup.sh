#!/bin/bash

echo "*****My Backup Script********"
echo "This script will create a backup of your files."

SOURCE=$1
BACKUP_DIR=$2
BACKUP_FILE="$BACKUP_DIR/backup_$(date +%Y%m%d_%H%M%S).tar.gz"

mkdir -p "$BACKUP_DIR"

if [ -d "$SOURCE" ]; then
    echo "Backing up directory: $SOURCE"
    echo "Backup will be saved to: $BACKUP_FILE"
    tar -czf "$BACKUP_FILE" -C "$SOURCE" .
    echo "Backup completed successfully."
else
    echo "Source input is not a valid directory: $SOURCE"
    exit 1
fi
