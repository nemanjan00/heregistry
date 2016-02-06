#!/bin/bash

NAME="$1"
REGISTRY="$2"
SOURCE="$3"

ID=$(docker run -d -v $3:/tmp/app gliderlabs/herokuish /build)

docker attach $ID

test $(docker wait $ID) -eq 0

docker commit $ID $NAME > /dev/null

ID=$(docker run -d $NAME /bin/rm -rf /tmp/app)

test $(docker wait $ID) -eq 0

docker commit $ID $NAME > /dev/null

docker tag $NAME $REGISTRY/$NAME

docker push $REGISTRY/$NAME

