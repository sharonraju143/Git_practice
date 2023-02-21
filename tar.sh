#!/bin/bash

# Define backup directory
BACKUP_DIR="/var/backups"

# Define file system paths to be backed up
BACKUP_PATHS="/home/sharon//Desktop/practice"

# Define backup filename with timestamp
BACKUP_FILENAME="$(date +%Y-%m-%d_%H-%M-%S)_backup.tar.gz"

# Define maximum number of backups to keep
BACKUP_COUNT=5

# Function to create backup archive
create_backup() {
  tar czf "${BACKUP_DIR}/${BACKUP_FILENAME}" ${BACKUP_PATHS}
}

# Function to check if backup directory exists and create it if it doesn't
check_backup_dir() {
  if [ ! -d "${BACKUP_DIR}" ]; then
    mkdir -p "${BACKUP_DIR}"
  fi
}

# Function to check if backup was successful
check_backup_status() {
  if [ $? -eq 0 ]; then
    echo "Backup created successfully"
  else
    echo "Backup failed"
    exit 1
  fi
}

# Function to remove old backups
remove_old_backups() {
  cd "${BACKUP_DIR}"
  ls -t | grep "${BACKUP_FILENAME}" -v | tail -n +$((${BACKUP_COUNT}+1)) | xargs rm -f
}

# Check if backup directory exists
check_backup_dir

# Create backup archive
create_backup

# Check backup status
check_backup_status

# Remove old backups
remove_old_backups

# Exit script with status code 0
exit 0
