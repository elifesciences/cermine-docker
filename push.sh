#!/bin/bash
set -e

source .env

docker push elifesciences/cermine:${CERMINE_VERSION}
docker tag elifesciences/cermine:${CERMINE_VERSION} elifesciences/cermine:latest
docker push elifesciences/cermine:latest
