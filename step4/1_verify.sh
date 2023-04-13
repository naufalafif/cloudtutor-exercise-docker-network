#!/bin/bash

NETWORK_NAME=challenge

if [ $(docker network ls --filter name=$NETWORK_NAME -q | wc -l) -eq 0 ]
then
    echo "Network challenge tidak ditemukan"
else
    echo "OK"
fi