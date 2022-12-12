#! /usr/bin/env bash

if [ ! -d "Velocity" ];
then
        git clone https://github.com/PaperMC/Velocity.git
fi

cd Velocity
git restore .
git clean -fd

for patch in ../patches/*.patch; do
        git apply $patch || exit
done

./gradlew publish
