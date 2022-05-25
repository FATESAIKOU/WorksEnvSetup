#!/usr/bin/env bash

docker ps -aqf ancestor=docker-compose | xargs -I{} docker stop {}
