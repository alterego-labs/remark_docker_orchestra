#!/bin/bash

source './api_manager.sh'
source './web_manager.sh'
source './db_manager.sh'
source './nginx_manager.sh'

echo "Stopper. Step 1. Stop API container..."
api_stop_container;

echo "Stopper. Step 2. Stop WEB container..."
web_stop_container;

echo "Stopper. Step 3. Stop PG container..."
pg_stop_container;

echo "Stopper. Step 4. Stop NGINX container..."
nginx_stop_container;
