#!/bin/bash

# Set variables
VM_IP="72.146.41.22"
VM_USER="azureuser"
PROJECT_DIR="/home/maisara/Documents/mern-app/server/db"
REMOTE_PROJECT_DIR="/home/azureuser/"

# Function to print messages
print_msg() {
    echo -e "\n==== $1 ====\n"
}

# Transfer project to the Azure VM
print_msg "Transferring project to Azure VM..."
scp -r $PROJECT_DIR $VM_USER@$VM_IP:$REMOTE_PROJECT_DIR

if [ $? -eq 0 ]; then
    print_msg "Project successfully transferred to the VM."
else
    print_msg "Error: Failed to transfer project to the VM."
    exit 1
fi


