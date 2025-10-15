#FROM ghcr.io/kiwix/kiwix-serve:3.7.0
ARG BUILD_FROM
#AGR ghcr.io/kiwix/kiwix-serve:3.7.0
FROM ghcr.io/kiwix/kiwix-serve:3.7.0

# Set up necessary environment variables
ENV LANG C.UTF-8



# Copy run script (optional)
COPY run.sh /run.sh
#COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
