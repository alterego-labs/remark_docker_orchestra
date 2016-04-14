#!/bin/bash

function stop_container_by_name {
  pid=`docker ps -a | grep "$1" | cut -d " " -f 1`;
  if [ -n "$pid" ];
  then
    echo "Stopping $1 container..."
    docker rm -f $pid > /dev/null;
  fi
}
