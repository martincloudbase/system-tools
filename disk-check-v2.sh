#!/bin/bash

LOGFILE="$HOME/system-tools/disk-check.log"
THRESHOLD=80

get_usage() {
  df -h / | awk 'NR==2 {print $5}' | tr -d '%'
}

USAGE=${USAGE:-$(get_usage)}

echo "[$(date)] Disk usage check: ${USAGE}%"

if [ "$USAGE" -gt "$THRESHOLD" ]; then
  echo "ALERT: usage above ${THRESHOLD}%"
  exit 1
else
  echo "OK: usage below ${THRESHOLD}%"
  exit 0
fi
