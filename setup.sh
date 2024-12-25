#!/bin/bash

export DEBIAN_FRONTEND=noninteractive
set -eu

docker network ls | grep -q traefik || docker network create traefik
docker network ls | grep -q docker || docker network create docker

if [[ ! -f traefik/access.log ]]; then
    touch traefik/access.log

    echo "✅ Created Traefik system log file"
fi
