#! /bin/bash
CONTAINER_NAME="web"
OLD="$(docker ps --all --quiet --filter=name="$CONTAINER_NAME")"
if [ -n "$OLD" ]; then
  docker rm -f $OLD
fi