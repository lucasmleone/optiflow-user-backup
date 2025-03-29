#!/bin/bash

BACKUP_DIR="../backups"
DATE=$(date "+%Y-%m-%d %H:%M:%S")
BACKUP_NAME="user_db_backup_$DATE.sql"

echo "$BACKUP_NAME REALIZADO Y CORRECTO" > $BACKUP_DIR/$BACKUP_NAME

if [[$? -eq 0]]; then
    echo "backup realizado CORRECTO"
else
    echo "hubo un fallo"
    exit 1
fi