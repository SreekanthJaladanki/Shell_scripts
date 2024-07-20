#!/bin/bash
SOURCE_DIR="/path/to/source_directory"
BACKUP_DIR="/path/to/backup_directory"
ARCHIVE_NAME="backup_$(date '+%Y-%m-%d').tar.gz"
S3_BUCKET="s3://your-bucket-name"

mkdir -p $BACKUP_DIR
tar -czf $BACKUP_DIR/$ARCHIVE_NAME -C $SOURCE_DIR .
aws s3 cp $BACKUP_DIR/$ARCHIVE_NAME $S3_BUCKET
find $BACKUP_DIR -type f -name "*.tar.gz" -mtime +7 -exec rm {} \;
echo "Backup process completed successfully."
