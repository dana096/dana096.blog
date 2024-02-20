#!/bin/bash

# var
BLOG_1="pysatellite-blog-a.internal"
BLOG_2="pysatellite-blog-b.internal"
BLOG_1_IMG_NAME="blog-1-img"
BLOG_2_IMG_NAME="blog-2-img"

# start
# sl -aF
figlet -f bubble start

#############################
figlet remove all
sudo docker stop $(sudo docker ps -q)
sudo docker rm $(sudo docker ps -a -q)
sudo docker rmi $(sudo docker images -q)
sudo docker network rm blog-net
