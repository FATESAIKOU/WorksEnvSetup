#!/usr/bin/env bash

docker ps -aqf ancestor=python3-selenium-crawler | xargs -I{} docker stop {}
