#!/bin/bash

source './variables'
source './general.sh'

function nginx_run_container {
  docker run \
    --name $NGINX_CONTAINER_NAME \
    -v $NGINX_CONF_FOLDER:/etc/nginx:ro -v $NGINX_LOGS_FOLDER:/var/log/nginx \
    --link $API_CONTAINER_NAME:remark-api \
    -d -p 8080:80 nginx:1.8.1
}

function nginx_stop_container {
  stop_container_by_name "$NGINX_CONTAINER_NAME";
}
