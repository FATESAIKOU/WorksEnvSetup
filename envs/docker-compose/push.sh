#!/usr/bin/env bash

read -p "username on dockerhub: " username
read -p "password on dockerhub: " password


docker build -t $username/docker-compose .

echo "$password" | docker login --username="$username" --password-stdin
docker push $username/docker-compose:latest
