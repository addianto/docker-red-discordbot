#!/usr/bin/env bash
docker_image_tag_name="addianto/red-discordbot"

docker build --compress \
             --tag "$docker_image_tag_name" \
             .