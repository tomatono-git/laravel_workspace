#!/bin/bash

PWD=`pwd`
cd ../docker
sudo docker-compose "$@"
cd $PWD
