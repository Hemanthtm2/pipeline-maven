#!/bin/bash 

echo "********************************"
echo "******** Pushing image *********"
echo "********************************"

IMAGE="maven-project"

echo "**Logging in **"

docker login -u hemanthtm2 -p $PASS 

echo "*** Tagging image ***"

docker tag $IMAGE:$BUILD_TAG hemanthtm2/$IMAGE:$BUILD_TAG

echo "*** Pushing the image***"

docker push hemanthtm2/$IMAGE:$BUILD_TAG
