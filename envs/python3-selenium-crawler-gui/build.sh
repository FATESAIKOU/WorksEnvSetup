#!/usr/bin/env bash

export USER=$(id -nu)
export UID=$(id -u)
export GID=$(id -g)
docker build --build-arg USER=$USER \
             --build-arg UID=$UID \
             --build-arg GID=$GID \
            -t python3-selenium-crawler-gui .
