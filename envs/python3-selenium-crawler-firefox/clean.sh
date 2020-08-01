#!/usr/bin/env bash

docker ps -aqf ancestor=python3-selenium-crawler-firefox | xargs -I{} docker stop {}
