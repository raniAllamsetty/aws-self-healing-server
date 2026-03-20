#!/bin/bash

# Define the service and log file path
SERVICE="httpd"
LOGFILE="/home/ec2-user/web_monitor.log"

# Check if the service is active
if systemctl is-active --quiet $SERVICE; then
    echo "$(date): $SERVICE is running." >> $LOGFILE
else
    echo "$(date): $SERVICE is DOWN. Restarting..." >> $LOGFILE
    sudo systemctl start $SERVICE

    # Double check if restart worked
    if systemctl is-active --quiet $SERVICE; then
        echo "$(date): $SERVICE successfully restarted." >> $LOGFILE
    else
        echo "$(date): $SERVICE failed to restart!" >> $LOGFILE
    fi
fi
