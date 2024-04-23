#!/bin/bash
set -e

if [ -z "$1" ]; then
    echo "Error: No image name provided."
    echo "Usage: $0 <image_name>"
    exit 1
fi

docker build -t "$1" .

if docker images | grep -q "$1"; then
    docker run --name SD_231M_AC_LAB -p 8080:8080 "$1"
else
    echo "Error: Docker image '$1' was not built successfully."
    exit 1
fi
