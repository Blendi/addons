#FROM ghcr.io/alexta69/metube:latest
ARG BUILD_FROM
#AGR ghcr.io/alexta69/metube:latest
FROM ghcr.io/alexta69/metube:latest

# Set up necessary environment variables
ENV LANG C.UTF-8



# Copy run script (optional)
COPY run.sh /run.sh
#COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
