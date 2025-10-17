#!/bin/ash
# Use POSIX-compliant script for `sh` shell

# THIS LINE IS CRUCIAL to load the bashio functions
# It must match where bashio was installed in your Dockerfile.
. /usr/lib/bashio/bashio.sh 👈 Make sure this path is correct!

set -e

#echo "Fetching DOWNLOAD_DIR from config.yaml..."
#logger "Fetching DOWNLOAD_DIR from config.yaml..."
bashio::log.info "Fetching DOWN_DIR from add-on configuration..."
# Fetch value from config.yaml using bashio
CONFIG_DOWN_DIR=$(bashio::config 'DOWN_DIR')

DOWNLOAD_DIR="${CONFIG_DOWN_DIR:-/media/My_Music/Youtube}"


# Check if DOWNLOAD_DIR is empty
if [ -z "$DOWNLOAD_DIR" ]; then
  echo "DOWNLOAD_DIR is not set in config.yaml. Exiting."
  exit 1
fi

#echo "Using DOWNLOAD_DIR: $DOWNLOAD_DIR"
#logger "Using DOWNLOAD_DIR: $DOWNLOAD_DIR"
bashio::log.info "Using DOWNLOAD_DIR: ${DOWNLOAD_DIR}"

# Export the value to the environment
export DOWNLOAD_DIR
# Run the Python script
exec python3 -m metube
