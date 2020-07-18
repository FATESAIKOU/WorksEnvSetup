#!/usr/bin/env bash

project_url=$(readlink -f $1)
command=$2

container=$(docker run \
    -u root \
    -i \
    -t \
    -d \
    --rm \
    -v $project_url:/project \
    python3 bash)

docker exec -it $container $command
docker stop $container > /dev/null
