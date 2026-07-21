#!/bin/bash

BACKUP_DIR="$HOME/backups"
SOURCE_DIR="$HOME"

mkdir -p "$BACKUP_DIR"

echo "===================================="
echo "         BACKUP MONITORING"
echo "===================================="

backup_file="$BACKUP_DIR/backup_$(date +%Y%m%d_%H%M%S).tar.gz"

tar -czf "$backup_file" "$SOURCE_DIR"

if [ $? -eq 0 ]; then
    echo "✅ Backup created successfully."
    echo "Location: $backup_file"
else
    echo "❌ Backup failed."
fi