# Use the official base image for Home Assistant add-ons
FROM ghcr.io/hassio-addons/base:12.2.7

# Install Kiwix Tools
RUN apt-get update && apt-get install -y \
    kiwix-tools \
    curl \
    bash \
    && rm -rf /var/lib/apt/lists/*

# Create the necessary directories for the add-on to run
RUN mkdir -p /data/zim

# Copy the run.sh script into the container
COPY run.sh /run.sh

# Make the run.sh script executable
RUN chmod +x /run.sh

# Set the working directory
WORKDIR /data

# The default command to run when the container starts
CMD [ "/run.sh" ]
