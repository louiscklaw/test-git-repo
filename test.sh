#!/usr/bin/env bash

rm -rf /tmp/1

set -ex


sudo apt update
sudo apt install -y python3 python3-pip python3-dev python3-wheel python3-setuptools
pip3 install --user pipenv

# commit id 3956c9d


git checkout test/test_2

# export TRAVIS_BRANCH=test/test_2
# export TRAVIS_COMMIT=0edef86
# export TRAVIS_BUILD_NUMBER=1
# export TRAVIS_REPO_SLUG=louiscklaw/test_on_github.git
# export GITHUB_TOKEN=5f96a076d65e0d11900bcee580db63f979e88497

# git push --dry-run https://0fd2275bd2df2726175b524d02258910dc3e454b@github.com/louiscklaw/test-git-repo

pipenv sync
pipenv run python3 ./merge.py

# git checkout feature/test_2
# # export TRAVIS_BRANCH=feature/test_2
# # export TRAVIS_COMMIT=0edef86
# # export TRAVIS_BUILD_NUMBER=1
# # export TRAVIS_REPO_SLUG=louiscklaw/test_on_github.git
# # export GITHUB_TOKEN=5f96a076d65e0d11900bcee580db63f979e88497

# pipenv sync
# pipenv run python3 ./merge.py

# git checkout pre-merge/test_2
# # export TRAVIS_BRANCH=pre-merge/test_2
# # export TRAVIS_COMMIT=0edef86
# # export TRAVIS_BUILD_NUMBER=1
# # export TRAVIS_REPO_SLUG=louiscklaw/test_on_github.git
# # export GITHUB_TOKEN=5f96a076d65e0d11900bcee580db63f979e88497

# pipenv sync
# pipenv run python3 ./merge.py
