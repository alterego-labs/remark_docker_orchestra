#!/bin/bash

source './variables'
source './general.sh'

function web_build_container {
  docker build -t $WEB_IMAGE_NAME $REMARK_WEB_PATH
}

function web_run_container {
  docker run \
    --name $WEB_CONTAINER_NAME \
    -d -P -i $WEB_IMAGE_NAME
}

function web_stop_container {
  stop_container_by_name "$WEB_CONTAINER_NAME";
}
