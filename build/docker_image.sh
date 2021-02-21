#!/bin/bash

TAG=v1 # docker image tag number
image_name=192.168.49.2:4000/hello
service_bin=hello
docker_file=dockerfile

#docker rm $(docker ps -aq -f "ancestor=$image_name")
#docker rmi $(docker images -q "$image_name")

echo "Making Image for $service_bin"
echo "Dockerfile: $dockerfile"
echo "Tag: $TAG"
#rm -rf lib/
#mkdir -p ./lib
#ldd $service_bin | grep "=> /" | awk '{ print $3 }'|xargs -I '{}' cp -v '{}' ./lib
#cp -v /lib64/ld-linux-x86-64.so.2 lib/
docker build -t $image_name:$TAG -f $docker_file .
#rm -rf lib/
#rm $1
