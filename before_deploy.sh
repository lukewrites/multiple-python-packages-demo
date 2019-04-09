#!/usr/bin/env bash

if [[ "$TRAVIS_TAG" =~ main ]]; then
    cd main
    pwd
elif [[ "$TRAVIS_TAG" =~ secondary ]]; then
    cd secondary
    pwd
else
    echo "no tag"
fi
