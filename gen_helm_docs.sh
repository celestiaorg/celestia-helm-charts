#!/bin/bash

for i in $(ls charts|grep -vE "template|README.md"); do
    cd charts/$i
    ls -ltar
    echo "Generating docs for chart: [$i]"
    docker run --rm --volume "$(pwd):/helm-docs" -u $(id -u) jnorwood/helm-docs:latest
    # go to git repo root
    cd $(git rev-parse --show-toplevel)
done
