#!/bin/bash
set -e;
set -u;


echo -e '\n\033[1m[Build Image]\033[0m'
docker build . -f linux.Dockerfile --rm -t lacledeslan/gamesvr-blackmesa-freeplay:latest --no-cache --pull --build-arg BUILDNODE="$(cat /proc/sys/kernel/hostname)";


echo -e '\n\033[1m[Running Self-Checks]\033[0m'
docker run -it --rm lacledeslan/gamesvr-blackmesa-freeplay:latest ./ll-tests/gamesvr-blackmesa-freeplay.sh


echo -e '\n\033[1m[Pushing to Docker Hub]\033[0m'
echo "> push lacledeslan/gamesvr-blackmesa-freeplay:latest"
docker push lacledeslan/gamesvr-blackmesa-freeplay:latest
