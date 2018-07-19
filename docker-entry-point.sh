#!/usr/bin/env bash

set -e

eval $(ssh-agent)
# /root/.ssh/git_access needs to be added into the container (this is done by Kubernetes)
ssh-add /root/.ssh/git_access

while true; do
    echo "******************************************"
    echo "*********** running tv-extract ***********"
    echo "******************************************"
    # /root/extract/extract.json needs to be added into the container (this is done by Kubernetes)
    extract /root/extract/extract.json
    echo "******************************************"
    echo "********* sleeping for  12 hours *********"
    echo "******************************************"
    sleep 12h
done

