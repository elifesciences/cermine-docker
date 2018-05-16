#!/usr/bin/env sh
set -ex

[ "$(curl -s -o /dev/null --write '%{http_code}' -X POST --data "reference=dummy reference" http://localhost:8080/parse.do)" == 200 ]
