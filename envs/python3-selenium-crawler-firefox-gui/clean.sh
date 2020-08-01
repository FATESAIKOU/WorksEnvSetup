#!/usr/bin/env bash

docker ps -aqf ancestor=python3-selenium-crawler-firefox-gui | xargs -I{} docker stop {}
