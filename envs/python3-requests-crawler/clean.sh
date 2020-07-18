#!/usr/bin/env bash

docker ps -aqf ancestor=python3-requests-crawler | xargs -I{} docker stop {}
