# 🔄 Automated Daily Backups with Rsync and Cron

This project demonstrates how to create an automated daily backup system on a Linux Server using `rsync` and `cron`. It allows you to back up files from one directory to another at a scheduled time each day.

---

## 🛠 Tools & Technologies

- 🐧 Ubuntu (Linux)
- ☁️ AWS EC2 Instance
- 🔄 Rsync (Remote Sync Utility)
- ⏰ Cron (Job Scheduler)
- 📂 File System & Directories
- 🖥️ Terminal (Bash)

---

## 🚀 Project Overview

This project includes:

- Installing `rsync` on an Ubuntu EC2 instance
- Creating directories for original and backup data
- Writing a shell script that runs `rsync` to back up files
- Using `cron` to schedule the script to run daily
- Logging output to verify backup success

---

## 📋 Step-by-Step Guide

### ✅ 1. Install Rsync
```bash
sudo apt update
sudo apt install rsync -y
```

### ✅ 2. Create Backup Directories
```
sudo mkdir -p /home/ubuntu/original_folder
sudo mkdir -p /home/ubuntu/backup_folder
```

### ✅ 3. Add Sample Files for Testing
```
touch orven_backup.txt | sudo tee /home/ubuntu/original_folder/sample.txt
```

### ✅ 4. Create the Rsync Backup Script
```
sudo nano /home/ubuntu/backup_script.sh
```

```
#!/bin/bash
rsync -av --delete /home/ubuntu/original_folder/ /home/ubuntu/backup_folder/ >> /home/ubuntu/backup.log 2>&1
```

#### Make the script executable:
```
sudo chmod +x /home/ubuntu/backup_script.sh
```

### ✅ 5. Schedule with Cron
```
crontab -e
```

## 📸 Example Output
```
sending incremental file list
orven_backup.txt.txt

sent 110 bytes  received 35 bytes  290.00 bytes/sec
total size is 29  speedup is 0.21
```

## 📎 Commands Reference
- `rsync -av --delete` – Sync files with verbose output, preserve permissions, and delete files not in source
- `chmod +x` – Make a script executable
- `crontab -e` – Edit the cron schedule
- `file.log 2>&1` – Log stdout and stderr to a file

## 💡 Real-World Use Cases
- Local backups on EC2 for disaster recovery
- Creating automated backup systems for websites or apps
- Reducing data loss risks in development environments

## 📚 Learning Outcomes
- Automate tasks using cron on Ubuntu
- Perform efficient local backups with rsync
- Understand Linux file management and scripting
- Build reliable job scheduling for server maintenance

## 🧑‍💻 Author
Orven Casido – techwithorven.xyz
