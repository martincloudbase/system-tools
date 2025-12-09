#!/bin/bash

timestamp=$(date "+%Y-%m-%d %H:%M:%S")

echo "[$timestamp] Disk usage overview"
df -h | grep "/$"
