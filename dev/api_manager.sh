#!/bin/bash

source './variables'
source './general.sh'

function api_build_container {
  docker build -t $API_IMAGE_NAME $REMARK_API_PATH
}

function api_run_container {
  docker run \
    --name $API_CONTAINER_NAME \
    --link $PG_CONTAINER_NAME:postgres \
    -d -P -i $API_IMAGE_NAME
}

function api_run_command {
  docker run \
    --rm \
    --link $PG_CONTAINER_NAME:postgres \
    $API_IMAGE_NAME $1
}

function api_stop_container {
  stop_container_by_name "$API_CONTAINER_NAME";
}
