FROM pataquets/ubuntu:latest

RUN \
  apt-get update && \
  DEBIAN_FRONTEND=noninteractive \
    apt-get -y install \
      boinctui \
  && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/

ENV TERM=screen

ENTRYPOINT [ "boinctui" ]
CMD [ "--help" ]
