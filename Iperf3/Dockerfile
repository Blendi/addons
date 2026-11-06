#ARG BUILD_FROM="homeassistant/amd64-base:latest"
#FROM ${BUILD_FROM} AS final
FROM ghcr.io/hassio-addons/base/amd64:21.0.10

ENV LANG C.UTF-8

# Install requirements to run
RUN apk add --no-cache iperf3

COPY rootfs/ /
