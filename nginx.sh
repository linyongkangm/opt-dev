#!/bin/bash
docker run -d -it --name nginx --network twos -p 80:80 -p 443:443 -p 22:22  \
-v $PWD/volumes/nginx/conf:/etc/nginx/ \
-v $PWD/volumes/nginx/ssl:/ssl/ \
nginx
