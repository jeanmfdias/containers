#!/bin/bash

echo "Run project containers"

param1=$1
param2=$2

echo $param1
echo $param2

if [ "$param1" = "--mysql" -a "$param2" = "5.7" ] 
then
    cd ./mysql
    docker compose up -d
    echo "MySQL 5.7 Running"
elif [ "$param1" = "--mysql" -a "$param2" = "8" ]
then
    cd ./mysql8
    docker compose up -d
    echo "MySQL 8 Running"
else
    echo "No container specified"
fi