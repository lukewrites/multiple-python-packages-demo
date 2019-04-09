#!/usr/bin/env bash

if [[ "$TRAVIS_TAG" =~ main ]]; then
    echo main
else [[ "$TRAVIS_TAG" =~ secondary ]]; then
    echo secondary
fi
