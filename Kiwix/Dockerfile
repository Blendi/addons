# Use the base image for Home Assistant add-ons (based on Alpine)
FROM ghcr.io/hassio-addons/base:12.2.7

# Set the maintainer label
LABEL maintainer="Jan Szumiec <jan.szumiec@gmail.com>"

# Install required dependencies
RUN apk add --no-cache curl bzip2

# Download Kiwix and extract it
RUN curl -k https://ftp.fau.de/kiwix/bin/0.10/kiwix-0.10-linux-x86_64.tar.bz2 | tar -xj \
    && mv kiwix-* /kiwix

# Create necessary directories
RUN mkdir -p /kiwix-data

# Set the working directory
WORKDIR /kiwix-data

# Set the volumes
VOLUME /kiwix-data

# Expose the Kiwix server port
EXPOSE 8080

# Copy the custom run.sh script that will start Kiwix with proper configuration
COPY run.sh /run.sh

# Make sure the script is executable
RUN chmod +x /run.sh

# Set the entry point to run the script
ENTRYPOINT ["/run.sh"]
