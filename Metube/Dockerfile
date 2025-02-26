FROM ghcr.io/alexta69/metube:latest

# Set working directory
WORKDIR /app

# Copy run script
COPY run.sh /run.sh
RUN chmod +x /run.sh

# Set entrypoint
ENTRYPOINT [ "/run.sh" ]
