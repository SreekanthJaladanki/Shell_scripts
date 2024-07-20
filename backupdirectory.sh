#!/bin/bash
SOURCE_DIR="/path/to/source_directory"
BACKUP_DIR="/path/to/backup_directory"
ARCHIVE_NAME="backup_$(date '+%Y-%m-%d').tar.gz"

mkdir -p $BACKUP_DIR
tar -czf $BACKUP_DIR/$ARCHIVE_NAME -C $SOURCE_DIR .
echo "Backup completed: $BACKUP_DIR/$ARCHIVE_NAME"
