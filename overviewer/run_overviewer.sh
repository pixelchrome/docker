#!/usr/bin/env sh

# -e ADDITIONAL_ARGS="--forcerender" \

docker run \
        --rm   \
        --name overviewer \
        -e MINECRAFT_VERSION=1.18 \
        -e ADDITIONAL_ARGS="--check-tiles" \
        -v /home/harry/minecraft:/home/minecraft/server/:ro   \
        -v /home/harry/overviewer/config/:/home/minecraft/config/:ro   \
        -v /home/harry/overviewer/render:/home/minecraft/render/:rw   \
        mide/minecraft-overviewer:latest

# upload rendered data to webserver
#echo "Uploading to webserver..."
#rsync -a /home/harry/minecraft/ admin@<webserver>:/usr/local/www/mc/
#echo "Finished"