#!/bin/bash

source './variables'
source './general.sh'

export PG_CONTAINER_NAME='remark-pg'

function pg_run_container {
  if [ ! -d "$DIRECTORY" ]; then
    mkdir -p $PG_LOCAL_DATA
  fi

  docker run \
    --name $PG_CONTAINER_NAME \
    -e POSTGRES_USER=admin \
    -e POSTGRES_PASSWORD=password \
    -v $PG_LOCAL_DATA:/var/lib/postgresql/data \
    -d postgres:9.5.1
}

function pg_stop_container {
  stop_container_by_name "$PG_CONTAINER_NAME";
}
