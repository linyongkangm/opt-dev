#!/bin/bash
VOLUME=$PWD/volumes/gitlab
docker run -d -it --name gitlab --network twos \
-v $VOLUME/config:/etc/gitlab:Z \
-v $VOLUME/logs:/var/log/gitlab:Z \
-v $VOLUME/data:/var/opt/gitlab:Z \
gitlab/gitlab-ce
