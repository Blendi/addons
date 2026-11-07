ARG BUILD_FROM
FROM ${BUILD_FROM}

# Install requirements to run
RUN apk add --no-cache iperf3

# Copy rootfs if you have one, or remove this line if the folder doesn't exist
COPY rootfs/ /
