#!/bin/sh -ex

DOCKER_IMAGE=tei1988/cloud-sdk-alpha:229.0.0-alpine
DOCKER_OPTIONS=\
  -v /usr/share/zoneinfo/Asia/Tokyo:/etc/localtime:ro\
  -v ${PWD}/crontabs:/var/spool/cron/crontabs:ro\
  -v ${PWD}/scripts:/opt/bin:ro\
  -w /opt\
  --entrypoint busybox\
  --restart always\
  -d
docker run ${DOCKER_OPTIONS} ${DOCKER_IMAGE} crond -d 8 -f
