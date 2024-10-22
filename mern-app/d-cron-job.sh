#!/bin/bash

DOCKER_VOLUME="mern-app_db-data"
BACKUP_DIR="/home/azureuser/db_backups"
BACKUP_FILE="mern-db-backup-$(date +%Y-%m-%d-%H-%M).tar.gz"
AZURE_STORAGE_ACCOUNT=" "
AZURE_CONTAINER_NAME=" "
STORAGE_ACCESS_KEY=" "

#ensure the backup directory exists. if not, create one.
mkdir -p $BACKUP_DIR

# Compress the Docker volume
echo "Compressing Docker volume data..."
docker run --rm \
  -v $DOCKER_VOLUME:/data \
  -v $BACKUP_DIR:/backup \
  alpine tar -czf /backup/$BACKUP_FILE -C /data .

# Upload the compressed file to Azure Blob Storage
echo "Uploading backup to Azure Blob Storage..."
az storage blob upload \
  --account-name $AZURE_STORAGE_ACCOUNT \
  --container-name $AZURE_CONTAINER_NAME \
  --name $BACKUP_FILE  \
  --file $BACKUP_DIR/$BACKUP_FILE \
  --account-key $STORAGE_ACCESS_KEY


echo "Backup has been successfully compressed and uploaded to Azure Blob Storage!"
