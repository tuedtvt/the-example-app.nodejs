#!/bin/bash

echo "********************"
echo "** Pushing image ***"
echo "********************"

IMAGE="the_example_nodejs_app:latest"


echo "** Logging in ***"
docker login -u tuedtvt -p $PASS
echo "*** Tagging image ***"
echo $IMAGE

docker tag $IMAGE tuedtvt/$IMAGE
echo "*** Pushing image ***"
docker push tuedtvt/$IMAGE
