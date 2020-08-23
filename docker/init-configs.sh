#!/usr/bin/env bash

set -e
file_dir=`dirname "$(readlink -f "$0")"`
project_dir=$(dirname "${file_dir}")

echo project_dir: ${project_dir}

base_dir=$project_dir/env-configs/wbc
cd $base_dir

# Load last configuration
git pull origin $(git rev-parse --abbrev-ref HEAD)

cp wbs-api-config/environments/docker.json $project_dir/wbc-api/.env

initVersionFile() {
  local component=$1
  local folder=$project_dir/$1

  echo "Init version ${component}"
  cd $folder
	version_by_tag=`git ls-remote --tags | grep -Po '\d{1,}\.\d{1,}\.\d{1,}' | sed '/-/!{s/$/_/}' | sort -rV | sed 's/_$//' | head -1`
  printf '{"version":"%s","build_date":"%s"}\n' "${version_by_tag}" "$(date -u +'%F')" > version.json

  echo "Version [${component}]: ${version_by_tag}"
}

initVersionFile 'wbs-client'
