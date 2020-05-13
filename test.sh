#!/usr/bin/env bash

set -ex

# commit id 3956c9d

git checkout test/test_2

export TRAVIS_BRANCH=test/test_2
export TRAVIS_COMMIT=0edef86
export TRAVIS_BUILD_NUMBER=1
export TRAVIS_REPO_SLUG=louiscklaw/test_on_github.git
export GITHUB_TOKEN=8c50e8410e3f2587b2680fdfca9e055ac4c8fbdc

pipenv sync
pipenv run python3 ./merge.py


export TRAVIS_BRANCH=feature/test_2
export TRAVIS_COMMIT=0edef86
export TRAVIS_BUILD_NUMBER=1
export TRAVIS_REPO_SLUG=louiscklaw/test_on_github.git
export GITHUB_TOKEN=8c50e8410e3f2587b2680fdfca9e055ac4c8fbdc

pipenv sync
pipenv run python3 ./merge.py


export TRAVIS_BRANCH=pre-merge/test_2
export TRAVIS_COMMIT=0edef86
export TRAVIS_BUILD_NUMBER=1
export TRAVIS_REPO_SLUG=louiscklaw/test_on_github.git
export GITHUB_TOKEN=8c50e8410e3f2587b2680fdfca9e055ac4c8fbdc

pipenv sync
pipenv run python3 ./merge.py
