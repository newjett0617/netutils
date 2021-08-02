#!/usr/bin/env bash

trap bye SIGINT SIGTERM

function bye() {
  echo "bye 👋"
  exit 1
}

function looping() {
  while true; do
    echo "hello... ${SECONDS}"
    sleep 1
  done
}

if [ "$1" = "bash" ]; then
  exec "$@"
else
  looping
fi
