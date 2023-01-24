#!/bin/bash
app="nginx"


docker build -t ${app} .
docker run -d -it -p 0.0.0.0:80:80 -p 0.0.0.0:443:443 --restart unless-stopped --name ${app} --mount type=bind,source=/home/data/res,target=/home/data/res ${app}
