#!/usr/bin/env bash

docker ps -aqf ancestor=python3-selenium-crawler-gui | xargs -I{} docker stop {}
