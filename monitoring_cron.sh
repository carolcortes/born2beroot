#!/bin/bash

# Calculate the delay
BOOT_TIME=$(who -b | awk '{print $3, $4}')  # Extract the boot time
BOOT_MIN=$(date -d "$BOOT_TIME" +%M)        # Get boot minutes
BOOT_SEC=$(date -d "$BOOT_TIME" +%S)        # Get boot seconds
DELAY_TIME=$((BOOT_MIN % 10 * 60 + BOOT_SEC))  # Calculate delay in seconds

# Sleep for the calculated delay
sleep "$DELAY_TIME"

# Run the monitoring script
sh /home/cade-oli/monitoring.sh
