#!/bin/bash

echo "********************"
echo "** Pushing image ***"
echo "********************"

IMAGE="the_example_nodejs_app"
BUILD_TAG = "latest"
echo "** Logging in ***"
docker login -u tuedtvt -p $PASS
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG tuedtvt/$IMAGE:$BUILD_TAG
echo "*** Pushing image ***"
docker push tuedtvt/$IMAGE:$BUILD_TAG
