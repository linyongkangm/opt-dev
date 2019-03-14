#!/bin/bash
docker run -d -it --name nginx --network twos -p 8080:80 \
-v $PWD/volumes/nginx/nginx.conf:/etc/nginx/nginx.conf \
nginx
