#! /usr/bin/env bash
set -e

if [ -n "$(git submodule status | grep '^-')" ]; then
    echo 'Error: git submodule not initialized'
    echo 'Please run `git submodule init` followed by `git submodule update`'
    exit 1
fi

cd Velocity

for patch in ../patches/*.patch; do
    git apply $patch
done

./gradlew publish

ls ../patches/*.patch | tac | while read f; do
    git apply -R $patch
done
