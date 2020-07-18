#!/usr/bin/env bash

docker ps -aqf ancestor=python3 | xargs -I{} docker stop {}
