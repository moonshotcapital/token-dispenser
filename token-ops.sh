#!/bin/bash

if [[ "$1" == "run" ]]
then
    docker run -d -p 8080:8080 --restart always --name token-dispenser -v $(pwd):/var/tmp/token-dispenser/ token-dispenser
elif [[ "$1" == "start" ]]
then
    docker start token-dispenser
elif [[ "$1" == "stop" ]]
then
    docker stop token-dispenser
elif [[ "$1" == "build" ]]
then
    docker build -t token-dispenser -f Dockerfile .
elif [[ "$1" == "status" ]]
then
    docker inspect token-dispenser
else
    echo "unknown command"
    exit 1
fi
