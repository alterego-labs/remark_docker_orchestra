#!/bin/bash

source './variables'
source './general.sh'
source './db_manager.sh'
source './api_manager.sh'
source './web_manager.sh'
source './nginx_manager.sh'

echo "=> Runner. Step 1. Run WEB container..."
web_run_container;

echo "=> Runner. Step 2. Run PG container..."
pg_run_container;

echo "=> Runner. Step 3. Run ecto migrations on API container..."
api_run_command "mix ecto.create";
api_run_command "mix ecto.migrate";

echo "=> Runner. Step 4. Run API container..."
api_run_container;

echo "=> Runner. Step 5. Run NGINX container..."
nginx_run_container;
