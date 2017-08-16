#!/bin/bash

NAME="$1"
SOURCE="$2"

# Build docker container from source dir

ID=$(docker run -d -v $SOURCE:/tmp/app gliderlabs/herokuish /build)

# Attach to build container to display log

docker attach $ID

if (($? != 0)); then
	exit 1
fi

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

