#!/bin/bash 

echo maven-project > /tmp/.auth

echo $BUILD_TAG >> /tmp/.auth 

echo $PASS >> /tmp/.auth

scp -i /opt/prod /tmp/.auth root@192.168.56.102:/tmp/.auth

scp -i /opt/prod ./jenkins/deploy/publish root@192.168.56.102:/tmp/publish

ssh -i /opt/prod root@192.168.56.102 "/tmp/publish"
