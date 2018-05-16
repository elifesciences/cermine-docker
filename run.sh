#!/bin/bash
set -e

source .env

docker run -p 8072:8080 elifesciences/cermine:${CERMINE_VERSION} $@
