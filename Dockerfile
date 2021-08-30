ARG ARCH=
FROM ${ARCH}/ubuntu:focal

LABEL maintainer="cristian@balist.es"
LABEL org.opencontainers.image.authors="cristian@balist.es"

# https://medium.com/@chamilad/lets-make-your-docker-image-better-than-90-of-existing-ones-8b1e5de950d
# Runtime distribution variables
ARG BUILD_DATE
ARG VCS_REF
ARG BUILD_VERSION

# Labels
LABEL org.label-schema.schema-version="1.0"
LABEL org.label-schema.name="cristiancantoro/boinctui"
LABEL org.label-schema.description="boinctui - Fullscreen text mode manager for BOINC client"
LABEL org.label-schema.url="https://sourceforge.net/projects/boinctui"
LABEL org.label-schema.vcs-url="https://github.com/CristianCantoro/docker-boinctui"
LABEL org.label-schema.vcs-ref=$VCS_REF
LABEL org.label-schema.build-date=$BUILD_DATE
LABEL org.label-schema.version=$BUILD_VERSION
LABEL org.label-schema.docker.cmd="docker run -it --rm --name boinctui -e TERM='screen' --net container:boinc-client cristiancantoro/boinctui"

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
