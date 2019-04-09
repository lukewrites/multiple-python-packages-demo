#!/usr/bin/env bash

if [[ "$TRAVIS_TAG" =~ main ]]; then
    cd main/
elif [[ "$TRAVIS_TAG" =~ secondary ]]; then
    cd secondary/
else
    echo "no tag"
fi
