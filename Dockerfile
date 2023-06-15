# TODO: move to Debian Bookworm when frozen 2023Q1: boinctui 2.7.0 +i386.
FROM ubuntu:jammy

ARG DEBIAN_FRONTEND=noninteractive
RUN \
  apt-get update && \
  apt-get upgrade -y && \
  apt-get -y install \
    boinctui \
  && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/

ENTRYPOINT [ "boinctui" ]
