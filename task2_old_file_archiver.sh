#!/bin/bash

# Configuration
TARGET_DIR="/home/anuj/test_data"            # Directory to scan
ARCHIVE_DIR="/home/anuj/archived_files"      # Where to move old files
LOG_FILE="/var/log/file_archiver.log"        # Log file

# Create archive directory if it doesn't exist
mkdir -p "$ARCHIVE_DIR"

# Find and move files older than 30 days
find "$TARGET_DIR" -type f -mtime +30 | while read -r FILE
do
    BASENAME=$(basename "$FILE")
    mv "$FILE" "$ARCHIVE_DIR/"
    
    if [ $? -eq 0 ]; then
        echo "$(date '+%Y-%m-%d %H:%M:%S') - Moved: $FILE -> $ARCHIVE_DIR/$BASENAME" >> "$LOG_FILE"
    else
        echo "$(date '+%Y-%m-%d %H:%M:%S') - Failed to move: $FILE" >> "$LOG_FILE"
    fi
done

