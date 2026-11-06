FROM ghcr.io/alexta69/metube:latest

ENV LANG C.UTF-8

# Copy startup script and make executable
COPY run.sh /run.sh
RUN chmod +x /run.sh

WORKDIR /app

ENTRYPOINT ["/bin/sh", "/run.sh"]
CMD ["python3", "-m", "app.main"]
