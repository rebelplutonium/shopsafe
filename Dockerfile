FROM ubuntu:16.10
RUN \
    apt-get update --assume-yes && \
    apt-get install --assume-yes chromium-browser ubuntu-restricted-extras flashplugin-installer adobe-flashplugin && \
    apt-get clean 
VOLUME /root
ENTRYPOINT ["chromium-browser" "--no-sandbox", "https://bankofamerica.com"]
CMD []