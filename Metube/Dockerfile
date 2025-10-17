#FROM ghcr.io/alexta69/metube:latest
ARG BUILD_FROM
#AGR ghcr.io/alexta69/metube:latest
FROM ghcr.io/alexta69/metube:latest

# Set up necessary environment variables
ENV LANG C.UTF-8

RUN apk add --no-cache git curl bash

# 2. Clone/download bashio into the correct directory
# This assumes you want to place it at /usr/lib/bashio/
RUN git clone https://github.com/hassio-addons/bashio.git /tmp/bashio \
    && mv /tmp/bashio/lib /usr/lib/bashio \
    && rm -r /tmp/bashio

# 3. Clean up
RUN apk del git

# Copy run script (optional)
COPY run.sh /run.sh
#COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
