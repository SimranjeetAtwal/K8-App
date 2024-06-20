#!/bin/bash

# Function to execute the backup using scp
execute_backup() {
    echo "Starting backup at $(date)" >> "$logfile"
    read -s -p "Enter the password for $backup_dest: " user_password
    echo   # Blank line for better formatting after password input

    # Execute scp command with password provided by the user
    sshpass -p "$user_password" scp -r "$backup_source" "$backup_dest" >> "$logfile" 2>&1
    backup_status=$?

    if [ $backup_status -eq 0 ]; then
        echo "Backup completed successfully at $(date)" >> "$logfile"
        echo "Backup completed successfully!"
    else
        echo "Backup failed with error code $backup_status at $(date)" >> "$logfile"
        echo "Backup failed. Check $logfile for details."
    fi

    # Clear the password variable for security
    unset user_password
}

# Prompt user for inputs
read -p "Enter the path to source directory to backup: " backup_source
read -p "Enter the destination server (username@remote-server:/path/to/backup/destination): " backup_dest
read -p "Enter the path for the log file: " logfile

# Main script execution
execute_backup

