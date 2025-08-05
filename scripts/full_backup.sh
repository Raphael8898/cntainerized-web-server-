#!/bin/bash
BACKUP_DIR="/home/$USER/backups"
SOURCE="/home/$USER/myproject"
DATE=$(date +%F)
mkdir -p "$BACKUP_DIR"
tar -czf "$BACKUP_DIR/full_backup_$DATE.tar.gz" "$SOURCE"
echo "Backup $DATE: $(ls -lh $BACKUP_DIR/full_backup_$DATE.tar.gz)" >> "$BACKUP_DIR/backup.log"

