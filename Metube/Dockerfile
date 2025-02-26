#FROM ghcr.io/alexta69/metube:latest
ARG BUILD_FROM
FROM ghcr.io/alexta69/metube

# Set up necessary environment variables
ENV LANG C.UTF-8

# Copy run script (optional)
COPY run.sh /run.sh
RUN chmod +x /run.sh

CMD [ "/run.sh" ]
