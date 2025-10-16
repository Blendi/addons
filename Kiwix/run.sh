#!/usr/bin/with-contenv bashio

# Log message to indicate that the add-on is starting
echo "Starting Kiwix Tools in the container..."

# Check if the ZIM folder exists in Home Assistant
if [ ! -d "/share/zim" ]; then
    echo "ZIM folder not found! Please ensure /share/zim contains ZIM files."
    exit 1
fi

# Copy ZIM files from Home Assistant's /share/zim to /kiwix-data
cp -r /share/zim/* /kiwix-data/

# Run kiwix-serve to serve the ZIM files on port 8080
/kiwix/bin/kiwix-serve --port 8080 /kiwix-data/*.zim &

# Keep the container running
wait
