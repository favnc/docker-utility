#!/bin/bash

echo -e "Scanning for containers older than one hour..."

docker run --rm -v /var/run/docker.sock:/var/run/docker.sock -e DRY_RUN=1 spotify/docker-gc
