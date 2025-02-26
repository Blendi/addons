#!/bin/sh
echo "Starting MeTube Add-on..."

# Ensure the downloads directory exists
mkdir -p /shared/mp3files

# Start MeTube
exec python3 /app/server.py
