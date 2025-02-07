#!/bin/sh

# Read the port from the environment variable
PORT=${PORT:-"5000"}
REGISTRY=${REGISTRY:-"https://registry-1.docker.io"}

# Replace the port in config.yml
sed -i "s?\$PORT?$PORT?g" /etc/docker/registry/config.yml

# Replace the registry in config.yml
sed -i "s?\$PROXY_REMOTEURL?$REGISTRY?g" /etc/docker/registry/config.yml

# Start the registry
/entrypoint.sh $@