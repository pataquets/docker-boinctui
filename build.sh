#!/usr/bin/env bash
# shellcheck disable=SC2128
SOURCED=false && [ "$0" = "$BASH_SOURCE" ] || SOURCED=true

if ! $SOURCED; then
  set -euo pipefail
  IFS=$'\n\t'
fi

ARCH="$1"

docker build \
  -t cristiancantoro/boinctui:"$ARCH" \
  --build-arg ARCH="$ARCH" \
  --build-arg VCS_REF="$(git rev-parse --short --verify HEAD)" \
  --build-arg BUILD_DATE="$(date --iso=date)" \
  --build-arg BUILD_VERSION='2.5.0' \
    .

exit 0
