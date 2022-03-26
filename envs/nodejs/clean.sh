#!/usr/bin/env bash

docker ps -aqf ancestor=nodejs | xargs -I{} docker stop {}
