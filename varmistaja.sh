#!/usr/bin/env bash
set -eEuo pipefail

endpoint=$1
while true; do
  if ! >/tmp/varmistaja 2>&1 curl --verbose --max-time 2 -Lsf "$endpoint"; then
    say "voi hemmeddi"
    cat /tmp/varmistaja
    exit 1
  fi

  printf "."
done
