#!/bin/bash
set -x

mkdir -p /usr/local/docker/dc-angular/

docker stop dc-angular
docker rm dc-angular

docker run -d -i -t --name dc-angular -h dc-angular \
  -p 4200:4200 \
  -p 3000:3000 \
  -v /usr/local/docker/dc-angular/:/app \
  quelves/dev:angular /bin/bash



