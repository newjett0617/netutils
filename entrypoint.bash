#!/usr/bin/env bash

trap bye SIGINT SIGTERM

function bye() {
  echo "bye 👋"
  exit 1
}

while true; do
  echo "hello... ${SECONDS}"
  sleep 1
done
