#!/bin/bash
BACKUP_DIR="/var/backups"
BACKUP_PATHS="/home/sharon/Desktop/practice"
BACKUP_FILENAME="$(date +%Y-%m-%d_%H-%M-%S)_backup.tar.gz."
BACKUP_COUNT="5"
create_backup()
{
   sudo tar -czf "$BACKUP_DIR/$BACKUP_FILENAME" $BACKUP_PATHS
}
create_backup
cd $BACKUP_DIR
ls -al

