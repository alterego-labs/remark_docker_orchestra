#!/bin/bash

source './variables'
source './api_manager.sh'

echo "Builder. Step 1. Build API container..."
api_build_container;
