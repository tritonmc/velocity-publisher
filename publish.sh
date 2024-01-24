#! /usr/bin/env bash
set -e

cd Velocity

for patch in ../patches/*.patch; do
    git apply $patch
done

./gradlew publish

ls ../patches/*.patch | tac | while read f; do
    git apply -R $patch
done
