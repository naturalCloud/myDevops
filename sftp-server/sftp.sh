#!/bin/bash
# define env var default value.

export UID=$(id -u)

if [ $1  == 'build' ]; then
  docker-compose -f ./docker-compose.yml build
fi

if [ $1  == 'run' ]; then
  docker-compose -f ./docker-compose.yml up -d
fi


if [ $1  == 'config' ]; then
docker-compose -f ./docker-compose.yml config
fi

if [ $1 == 'stop' ]; then
    docker-compose -f ./docker-compose.yml stop
fi


if [ $1  == 'stop' ]; then
docker-compose -f ./docker-composer.yaml stop
fi

if [ $1  == 'restart' ]; then
docker-compose -f ./docker-composer.yaml restart
fi





#docker-compose -f ./docker-compose.yml up -d