#!/bin/bash
app="nginx"


docker stop $app
docker rm $app
docker rmi $app
