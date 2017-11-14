#!/bin/bash
sudo docker pull gitlab/gitlab-ce:latest
mkdir config
mkdir logs
mkdir data
sudo docker stop gitlab
sudo docker rm 	/gitlab
# -d 后台
sudo docker run -d \
--hostname gitlabhostname \
--name gitlab \
--publish 443:443 \
--publish 9888:9888 \
--publish 9999:9999 \
--publish 2200:22 \
--publish 8080:80 \
--restart always \
--volume ~/gitlab/config:/etc/gitlab \
--volume ~/gitlab/logs:/var/log/gitlab \
--volume ~/gitlab/data:/var/opt/gitlab \
gitlab/gitlab-ce:latest
