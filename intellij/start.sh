#!/bin/bash

USER=$1
WORK_DIR=$2

if [[ -z $(docker image ls -q intellij) ]]; then
    echo "IntelliJ image not found. Please build the image first."
    exit 1
fi

if [[ -z $USER ]]; then
    echo "User name should be specified."
    exit 1
fi

if [[ ! -e $WORK_DIR ]]; then
    echo "Work directory should be exists."
    exit 1
fi

uid=$(id -u $USER)
gid=$(id -g $USER)

exec docker run --net=host --name=intellij -it -e DISPLAY=$DISPLAY -v /tmp/.X11-unix \
     -v $(readlink -fq $WORK_DIR):/work \
     --user="$uid:$gid" intellij
