#!/bin/bash
sudo docker stop gitlab
# -d 后台
sudo docker start -d \
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
