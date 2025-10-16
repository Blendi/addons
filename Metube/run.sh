#!/usr/bin/with-contenv bashio
# shellcheck shell=bash
# shellcheck disable=SC2155,SC2016
echo "Starting MeTube..."
set -e
CONFIG_PATH=/data/options.json
echo "DOWNLOAD_DIR: $DOWNLOAD_DIR"
# Always reload DB config from options (to ensure up-to-date values after export)
export DOWNLOAD_DIR = $(bashio::config 'DOWNLOAD_DIR')
#export DOWNLOAD_DIR="$DOWNLOAD_DIR"

exec python3 -m metube
