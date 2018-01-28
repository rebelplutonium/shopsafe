FROM ubuntu:16.10
RUN \
    apt-get update --assume-yes && \
        apt-get install --assume-yes chromium-browser ubuntu-restricted-extras flashplugin-installer adobe-flashplugin && \
        adduser --disabled-password --gecos "" user
USER user
VOLUME /home
ENTRYPOINT ["chromium-browser", "--no-sandbox", "https://bankofamerica.com"]
CMD []