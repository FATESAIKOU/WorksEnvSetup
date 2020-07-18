#!/usr/bin/env bash

project_url=$(readlink -f $1)
command=$2

container=$(docker run \
    -u root \
    -i \
    -d \
    --rm \
    -v $project_url:/project \
    python3)

docker exec -it $container $command
