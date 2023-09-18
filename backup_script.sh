#!/bin/bash

# Source and destination directories
source_dir="/var/www/html/"
backup_dir="/opt/BackUp/WebSiteBackUp"

# Create the backup directory if it doesn't exist
if [ ! -d "$backup_dir" ]; then
    mkdir -p "$backup_dir"
fi

# Create a filename with the current date and time
current_date_time=$(date '+%Y-%m-%d_%H-%M-%S')
backup_filename="website_backup_${current_date_time}.tar.gz"

# Perform the backup
tar -czf "${backup_dir}/${backup_filename}" -C "$source_dir" .

# Check if the backup was successful
if [ $? -eq 0 ]; then
  echo "Website backup created successfully: ${backup_dir}/${backup_filename}"
else
  echo "Failed to create website backup."
fi

# Remove old backups, keeping the latest 5
cd "$backup_dir" || exit
ls -t | tail -n +6 | xargs -r rm

# Exit the script
exit 0
