#!/bin/bash

# Set variables
DOCKER_VOLUME_NAME="mern-app_db-data"
DOCKER_VOLUME_DIR="/var/lib/docker/volumes/$DOCKER_VOLUME_NAME/_data"
BACKUP_DIR="/home/azureuser/db_backups"
BACKUP_FILE="mern-db-backup-$(date +%Y-%m-%d-%H-%M).tar.gz"
AZURE_STORAGE_ACCOUNT=" "
AZURE_CONTAINER_NAME=" "
STORAGE_ACCESS_KEY=" "

# Ensure the backup directory exists
mkdir -p $BACKUP_DIR

# Copy data from Docker volume directory to backup directory
echo "Copying Docker volume data to the backup directory..."
cp -r $DOCKER_VOLUME_DIR $BACKUP_DIR/volume_data

# Compress the copied volume data
echo "Compressing Docker volume data..."
tar -czf $BACKUP_DIR/$BACKUP_FILE -C $BACKUP_DIR volume_data

# Clean up the copied data
rm -rf $BACKUP_DIR/volume_data

# Upload the compressed file to Azure Blob Storage
echo "Uploading backup to Azure Blob Storage..."
az storage blob upload \
  --account-name $AZURE_STORAGE_ACCOUNT \
  --container-name $AZURE_CONTAINER_NAME \
  --name $BACKUP_FILE  \
  --file $BACKUP_DIR/$BACKUP_FILE \
  --account-key $STORAGE_ACCESS_KEY
