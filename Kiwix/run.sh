#!/usr/bin/with-contenv bashio

# Print a log message
echo "Starting Kiwix Tools in the container..."

# Mount the Home Assistant 'share/zim' folder to /data in the container
# and map port 8085 from the host to 8080 inside the container.
docker run -d \
  --name kiwix-tools \
  --restart=unless-stopped \
  -v /share/zim:/data \
  -p 8085:8080 \
  ghcr.io/kiwix/kiwix-tools:3.7.0
