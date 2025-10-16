#!/usr/bin/with-contenv bashio

# Log start message
echo "Starting Kiwix Tools in the container..."

# Check if the ZIM folder exists
if [ ! -d "/share/zim" ]; then
    echo "ZIM folder not found. Please ensure /share/zim contains ZIM files."
    exit 1
fi

# Copy ZIM files from Home Assistant's /share/zim to /data/zim
cp -r /share/zim/* /data/zim/

# Run kiwix-serve to serve the ZIM files on port 8080
kiwix-serve --port 8080 /data/zim/*.zim &

# Keep the script running to keep the container alive
wait
