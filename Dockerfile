FROM pataquets/ubuntu:latest

ARG DEBIAN_FRONTEND=noninteractive
RUN \
  apt-get update && \
  apt-get -y install \
    boinctui \
  && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/

ENTRYPOINT [ "boinctui" ]
