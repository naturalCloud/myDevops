#!/bin/bash
# define env var default value.

export UID=$(id -u)

if [ $1  == 'build' ]; then
  docker-compose -f ./docker-composer.yaml build
fi

if [ $1  == 'run' ]; then
  docker-compose -f ./docker-composer.yaml up -d
fi


if [ $1  == 'config' ]; then
docker-compose -f ./docker-composer.yaml config
fi




#docker-compose -f ./docker-composer.yaml up -d