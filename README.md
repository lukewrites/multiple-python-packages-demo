# silly-package
[![Build Status](https://travis-ci.org/lukewrites/silly-package.svg?branch=master)](https://travis-ci.org/lukewrites/silly-package)

## What Is This?
This repo shows you how to have two Python packages in the same repo with automated packaging and uploading to PyPi via Travis CI.

## Background
Standard practice is for a git repo to have one Python package in it. Most CI/CD tools are built on this assumption. However, in some cases it's necessary to have more than one package in a repo. This repo shows you how you can use Travis CI to package and distribute Python packages from a repo that hosts multiple packages.

## How It Works
I'll just go through the `.travis.yml` file

```
stages:
- test
- name: deploy
  if: tag =~ main OR tag =~ secondary
```

`deploy` will only happen if (1) there's a git tag and (b) it starts with either `main` or `secondary`

```
- stage: deploy
     python: 3.4
     script: cd $(bash before_deploy.sh)
```
If there's a git tag that meets one of those criterion, when we start the deploy stage we `cd` into the directory of that package using the `before_deploy.sh` script. Then packaging runs from there.

## Why Post This
I hope it saves you some time.

## If I Did Something Wrong Or You Can Improve This
Please open a PR!
