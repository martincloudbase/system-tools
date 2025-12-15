#!/bin/bash

LOGFILE="$HOME/system-tools/disk-check.log"

echo "[$(date)] Disk usage overview" | tee -a "$LOGFILE"
df -h / | tee -a "$LOGFILE"
