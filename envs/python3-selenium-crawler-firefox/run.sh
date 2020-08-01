#!/usr/bin/env bash

project_url=$(readlink -f $1)
command=$2

container=$(docker run \
    -u root \
    -i \
    -t \
    -d \
    --rm \
    --cap-add=SYS_ADMIN \
    -v $project_url:/project \
    python3-selenium-crawler-firefox)

docker exec -it $container $command
docker stop $container > /dev/null
