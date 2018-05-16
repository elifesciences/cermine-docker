#!/bin/bash
set -e

source .env

docker build -t elifesciences/cermine:${CERMINE_VERSION} --build-arg CERMINE_VERSION=${CERMINE_VERSION} .
