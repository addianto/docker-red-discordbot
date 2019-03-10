#!/usr/bin/env bash
docker_image_tag_name="addianto/docker-red-discordbot"

docker build --compress \
             --tag "$docker_image_tag_name" \
             .