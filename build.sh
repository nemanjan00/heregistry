#!/bin/bash

NAME="$1"
REGISTRY="$2"
SOURCE="$3"

# Build docker container from source dir

ID=$(docker run -d -v $3:/tmp/app gliderlabs/herokuish /build)

# Attach to build container to display log

docker attach $ID

# Wait for container to finish

test $(docker wait $ID) -eq 0

# Commit changes to new tag

docker commit $ID $NAME > /dev/null

# Delete /tmp/app (bug fix)

ID=$(docker run -d $NAME /bin/rm -rf /tmp/app)

# Wait for container to finish

test $(docker wait $ID) -eq 0

# Commit tag

docker commit $ID $NAME > /dev/null

# Create tag to push to remote registry

docker tag $NAME $REGISTRY/$NAME

# Push to remote registry

docker push $REGISTRY/$NAME

