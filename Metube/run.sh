#!/bin/sh
set -e

# Read user-configured DOWNLOAD_DIR from Home Assistant options
DOWNLOAD_DIR="/media/My_Music/Youtube"
if [ -f "/data/options.json" ]; then
    CONFIG_DIR=$(sed -n 's/.*"DOWNLOAD_DIR":[[:space:]]*"\([^"]*\)".*/\1/p' /data/options.json 2>/dev/null || true)
    if [ -n "$CONFIG_DIR" ]; then
        DOWNLOAD_DIR="$CONFIG_DIR"
    fi
fi

bashio::log.info "--------------------------------------------------"
bashio::log.info "Configuring MeTube Download Location..."
bashio::log.info "Target path: ${DOWNLOAD_DIR}"
bashio::log.info "--------------------------------------------------"

# Ensure target directory exists on mapped media mount
mkdir -p "${DOWNLOAD_DIR}"

# Export output directory expected by MeTube
export OUTPUT_DIR="${DOWNLOAD_DIR}"

# Explicitly add application directories to Python's module search path
export PYTHONPATH="/app:/app/app:${PYTHONPATH}"

bashio::log.info "Starting MeTube..."
exec "$@"
