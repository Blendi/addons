#!/usr/bin/env sh
# shellcheck shell=sh
# shellcheck disable=SC2155,SC2016
set -e

#echo "Fetching DOWNLOAD_DIR from config.yaml..."
logger "Fetching DOWNLOAD_DIR from config.yaml..."
# Fetch value from config.yaml using bashio
DOWNLOAD_DIR=$(bashio::config 'download_dir')

# Check if DOWNLOAD_DIR is empty
if [ -z "$DOWNLOAD_DIR" ]; then
  echo "DOWNLOAD_DIR is not set in config.yaml. Exiting."
  exit 1
fi

#echo "Using DOWNLOAD_DIR: $DOWNLOAD_DIR"
logger "Using DOWNLOAD_DIR: $DOWNLOAD_DIR"
# Export the value to the environment
export DOWNLOAD_DIR

# Run the Python script
exec python3 -m metube
