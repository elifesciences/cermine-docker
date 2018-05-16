#!/bin/bash
set -e

source .env

docker run \
    --rm \
    --name cermine \
    -p 8072:8080 \
    elifesciences/cermine:${CERMINE_VERSION} \
    $@
