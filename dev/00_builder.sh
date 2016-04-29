#!/bin/bash

source './variables'
source './api_manager.sh'
source './web_manager.sh'

echo "=> Builder. Step 1. Build API container..."
api_build_container;

# echo "=> Builder. Step 2. Build WEB container..."
# web_build_container;
