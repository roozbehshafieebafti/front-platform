#!/bin/bash

ROOT_DIRECTORY=$1

# fetch api
APIS_FILE="$ROOT_DIRECTORY/module/install_project/dependencies/apis/fetch.ts"
APIS_FILE_TEST="$ROOT_DIRECTORY/module/install_project/dependencies/apis/fetch..test.ts"

if [ ! -f "$APIS_FILE" ]
then
    echo "fetch.ts dose NOT exists"
    exit 1
fi

if [ ! -f "$APIS_FILE" ]
then 
    echo "fetch.test.ts dose NOT exists"
    exit 1
fi

exit 0