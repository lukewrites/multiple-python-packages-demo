#!/usr/bin/env bash

if [[ "$TRAVIS_TAG" =~ main ]]; then
    cd main
    python setup.py sdist
    ls dist/
    twine upload --repository-url https://test.pypi.org/legacy/ dist/*
elif [[ "$TRAVIS_TAG" =~ secondary ]]; then
    cd secondary
    python setup.py sdist
    ls dist/
    twine upload --repository-url https://test.pypi.org/legacy/ dist/*
else
    echo "no tag"
fi
