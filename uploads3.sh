#!/bin/bash

# Advanced shell script to backup a directory and upload to AWS S3

# Configuration
SOURCE_DIR="/path/to/source_directory"
BACKUP_DIR="/path/to/backup_directory"
ARCHIVE_NAME="backup_$(date '+%Y-%m-%d').tar.gz"
S3_BUCKET="s3://your-bucket-name"

# Create a backup directory if it doesn't exist
mkdir -p $BACKUP_DIR

# Archive and compress the source directory
tar -czf $BACKUP_DIR/$ARCHIVE_NAME -C $SOURCE_DIR .

# Check if the tar command succeeded
if [ $? -eq 0 ]; then
  echo "Backup archive created successfully: $BACKUP_DIR/$ARCHIVE_NAME"
else
  echo "Failed to create backup archive"
  exit 1
fi

# Upload the backup archive to S3
aws s3 cp $BACKUP_DIR/$ARCHIVE_NAME $S3_BUCKET

# Check if the upload succeeded
if [ $? -eq 0 ]; then
  echo "Backup uploaded to S3 successfully: $S3_BUCKET/$ARCHIVE_NAME"
else
  echo "Failed to upload backup to S3"
  exit 1
fi

# Clean up old backups (optional: retain only the last 7 backups)
find $BACKUP_DIR -type f -name "*.tar.gz" -mtime +7 -exec rm {} \;

# Output
echo "Backup process completed successfully."
