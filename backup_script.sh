#!/bin/env bash

SOURCE="/home/ubuntu/project"
DESTINATION="/home/ubuntu/backups"
TODAY=$(date +"%Y-%m-%d")
DESTINATION_DIR="$DESTINATION/%TODAY"

mkdir -p "$DESTINATION_DIR"

rsync -av --delete "$SOURCE/" "$DESTINATION_DIR/"

find "$DESTINATION" -maxdepth 1 -type d -mtime +7 -exec rm -rf {} \;
