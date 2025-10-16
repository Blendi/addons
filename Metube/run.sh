#!/usr/bin/env bash
#!/usr/bin/env bashio
echo "Starting MeTube..."
set -e
echo "DOWNLOAD_DIR: $DOWNLOAD_DIR"
# Always reload DB config from options (to ensure up-to-date values after export)
#export DOWNLOAD_DIR="$(bashio::config 'DOWNLOAD_DIR')"
export DOWNLOAD_DIR="$DOWNLOAD_DIR"

exec python3 -m metube
