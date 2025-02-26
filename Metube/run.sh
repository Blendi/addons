#!/bin/bash
# Start the addon
docker run --rm -d \
  --name=metube \
  -p 8081:8081 \
  -v /path/to/downloads:/share/youtube_music \
  ghcr.io/alexta69/metube
