#!/bin/bash

#============================================================================================================
# Script Description:Display the last 10 failed login attempts from /var/log/secure
#============================================================================================================

echo "Last 10 Failed Login Attempts:"
echo "____________________________________"

grep -E "authentication failure|password check failed" /var/log/secure | tail -n 10 | while read -r line; do

    # Extract timestamp (first 3 fields)
    TIMESTAMP=$(echo "$line" | awk '{print $1, $2, $3}')

    # Safely extract valid username (avoiding rhost=)
    USER=$(echo "$line" | grep -oP 'user(?:=|\s\()\K[^) ]+' | grep -v 'rhost' | head -n 1)

    # If username not found, fallback to Unknown
    if [[ -z "$USER" ]]; then
        USER="Unknown"
    fi

    # Extract IP if present
    IP=$(echo "$line" | grep -oP 'from \K[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+' || echo "N/A")

    echo "Time: $TIMESTAMP | User: $USER | IP: $IP"
done

echo "_____________________________________"
echo "Report Complete."

