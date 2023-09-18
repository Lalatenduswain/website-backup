# Website Backup Script

This repository contains a Bash script for creating daily backups of your website directory and storing them in a specified destination directory. It also retains the latest 5 backups while deleting older ones.

## Usage

1. **Clone the Repository:**

   Clone this repository to your server where you want to set up the backup script.

   ```bash
   git clone https://github.com/Lalatenduswain/website-backup.git
   ```

2. **Edit the Configuration (Optional):**

   You can modify the source directory and backup directory in the script (`backup_script.sh`) if needed.

3. **Make the Script Executable:**

   Make the `backup_script.sh` file executable.

   ```bash
   chmod +x backup_script.sh
   ```

4. **Test the Backup Script:**

   Before scheduling the script as a cron job, test it by running it manually:

   ```bash
   ./backup_script.sh
   ```

   This will create a backup of your website directory.

5. **Schedule as a Cron Job:**

   To schedule the script as a daily cron job at 2:00 AM, open your crontab configuration:

   ```bash
   crontab -e
   ```

   Add the following line to run the script every day at 2:00 AM:

   ```bash
   0 2 * * * /path/to/backup_script.sh
   ```

   Replace `/path/to/backup_script.sh` with the actual path to your script.

6. **Save and Exit**: Save the crontab configuration.

## Donations

If you want to show your appreciation, you can donate via [Buy Me a Coffee](https://www.buymeacoffee.com/lalatendu.swain)

## Disclaimer

This script is provided as-is and may require modifications or updates based on your specific environment and requirements. Use it at your own risk. The authors of the script are not liable for any damages or issues caused by its usage.
