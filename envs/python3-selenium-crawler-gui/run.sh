#!/usr/bin/env bash

project_url=$(readlink -f $1)
command=$2

container=$(docker run \
    -i \
    -t \
    -d \
    --rm \
    --cap-add=SYS_ADMIN \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e DISPLAY=unix$DISPLAY \
    -v $project_url:/project \
    python3-selenium-crawler-gui)

docker exec -it $container $command
docker stop $container > /dev/null
