# AWS Self-Healing Web Server 🛡️🌐

A project demonstrating automated service recovery (High Availability) using **AWS EC2**, **Bash scripting**, and **Linux Cron jobs**.

## 🎯 The Goal
To build a resilient web server that monitors its own health and automatically restarts services in the event of a failure, reducing downtime without human intervention.

## 🛠️ Technology Stack
* **Cloud:** AWS (EC2)
* **OS:** Amazon Linux 2023
* **Web Server:** Apache (httpd)
* **Automation:** Bash Scripting & Crontab
* **Logging:** Custom system logs for audit trails

## 🚀 Key Features
* **Service Monitoring:** A Bash script checks the status of the `httpd` process every 60 seconds.
* **Automated Recovery:** If the service is down, the script triggers an automatic restart.
* **Event Logging:** Every check and restart action is timestamped and logged to `/home/ec2-user/web_monitor.log`.
* **Infrastructure as Code (Logic):** Utilizes `systemctl` and `cronie` for process management.

## 📝 The "Self-Healing" Script
```bash
# Example logic used in the project
if systemctl is-active --quiet httpd; then
    echo "$(date): Service is running." >> web_monitor.log
else
    echo "$(date): Service DOWN. Restarting..." >> web_monitor.log
    sudo systemctl start httpd
fi
