#!/bin/bash

# declare -a arr=("element1" "element2" "element3")
# for i in "${arr[@]}"

## declare an array variable

echo "Add multiple directory: e.g  folders"
# shellcheck disable=SC2162
read -p 'Enter new directory: ' directory

# Create the directory
mkdir config
mkdir internal
mkdir internal/model internal/middleware internal/interceptor internal/"$directory"
mkdir internal/"$directory"/delivery internal/"$directory"/repository internal/"$directory"/service
mkdir internal/"$directory"/delivery/http
mkdir pkg pkg/logger pkg/postgres pkg/utils

# Create the file
touch config/local-config.yml