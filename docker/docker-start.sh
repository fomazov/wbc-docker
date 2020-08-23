#!/usr/bin/env bash

set -e
file_dir=`dirname "$(readlink -f "$0")"`
project_dir=$(dirname "${file_dir}")

echo project_dir: ${project_dir}

export project_dir=${project_dir}
export COMPOSE_HTTP_TIMEOUT=1000
export run_test='_'
export HOST_UID=$(id -u)
export HOST_GID=$(id -g)

docker-compose -f ${file_dir}/docker-compose/common.yml -f ${file_dir}/docker-compose/base.yml up --remove-orphans "$@"