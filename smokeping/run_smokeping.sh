#!/usr/bin/env sh

docker run \
    -d \
    --name=smokeping \
    -e PUID=1000 \
    -e PGID=1000 \
    -e TZ=Europe/Berlin \
    -p 8080:80 \
    -v /home/harry/smokeping/config:/config \
    -v /home/harry/smokeping/data:/data \
    --restart unless-stopped \
    linuxserver/smokeping