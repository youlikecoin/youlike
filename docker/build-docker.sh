#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-youlikepay/youliked-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/youliked docker/bin/
cp $BUILD_DIR/src/youlike-cli docker/bin/
cp $BUILD_DIR/src/youlike-tx docker/bin/
strip docker/bin/youliked
strip docker/bin/youlike-cli
strip docker/bin/youlike-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
