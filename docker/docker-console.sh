#!/bin/bash

prefix='';
os_name=$(uname -s)

export HOST_UID=$(id -u)
export HOST_GID=$(id -g)

if [[ "$os_name" == "MINGW64_NT-10.0" ]]; then
    prefix='winpty'
fi

clear && ${prefix} docker exec -it $1 bash