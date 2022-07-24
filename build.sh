#!/bin/bash

DOCKER_BUILDKIT=1 docker build -t demoapp .

docker run --rm \
    -v "$(pwd)/bin:/go/bin/" \
    demoapp