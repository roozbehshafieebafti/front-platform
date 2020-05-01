#!/bin/bash

ROOT_DIRECTORY=$1

# fetch api
APIS_FILE="$ROOT_DIRECTORY/module/install_project/dependencies/apis/fetch.ts"
APIS_FILE_TEST="$ROOT_DIRECTORY/module/install_project/dependencies/apis/fetch.test.ts"

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

# test redux files 
STORE="$ROOT_DIRECTORY/module/install_project/dependencies/redux/store.ts"
STORE_TEST="$ROOT_DIRECTORY/module/install_project/dependencies/redux/store.test.ts"
COMBINE="$ROOT_DIRECTORY/module/install_project/dependencies/redux/combine.ts"
COMBINE_TEST="$ROOT_DIRECTORY/module/install_project/dependencies/redux/combine.test.ts"

if [ ! -f "$STORE" ]
then
    echo "store.ts dose NOT exists"
    exit 1
fi

if [ ! -f "$STORE_TEST" ]
then 
    echo "store.test.ts dose NOT exists"
    exit 1
fi

if [ ! -f "$COMBINE" ]
then
    echo "combine.ts dose NOT exists"
    exit 1
fi

if [ ! -f "$COMBINE_TEST" ]
then 
    echo "combine.test.ts dose NOT exists"
    exit 1
fi


exit 0