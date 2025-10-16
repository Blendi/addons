# Use the official base image
FROM ghcr.io/hassio-addons/base:12.2.7

# Install required dependencies (if any)
RUN apt-get update && apt-get install -y \
    curl \
    bash \
    && rm -rf /var/lib/apt/lists/*

# Copy the run.sh script into the container
COPY run.sh /run.sh

# Make the run.sh script executable
RUN chmod +x /run.sh

# Set the working directory
WORKDIR /data

# The default command to run when the container starts
CMD [ "/run.sh" ]
