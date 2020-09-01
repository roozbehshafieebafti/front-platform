#!/bin/bash

RED='\033[0;31m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
NC='\033[0m'

ROOT_DIRECTORY=$1

# fetch api
APIS_FILE="$ROOT_DIRECTORY/module/install_project/dependencies/apis/fetch.ts"
APIS_FILE_TEST="$ROOT_DIRECTORY/module/install_project/dependencies/apis/fetch.test.ts"

if [ ! -f "$APIS_FILE" ]
then
    printf "${YELLOW}fetch.ts ${RED}dose NOT exists${NC} \n"
    exit 1
fi

if [ ! -f "$APIS_FILE_TEST" ]
then 
    printf "${YELLOW}fetch.test.ts ${RED}dose NOT exists${NC} \n"
    exit 1
fi

# test redux files 
STORE="$ROOT_DIRECTORY/module/install_project/dependencies/redux/store.ts"
STORE_TEST="$ROOT_DIRECTORY/module/install_project/dependencies/redux/store.test.ts"
COMBINE="$ROOT_DIRECTORY/module/install_project/dependencies/redux/combine.ts"
COMBINE_TEST="$ROOT_DIRECTORY/module/install_project/dependencies/redux/combine.test.ts"

if [ ! -f "$STORE" ]
then
    printf "${YELLOW}store.ts ${RED}dose NOT exists${NC} \n"
    exit 1
fi

if [ ! -f "$STORE_TEST" ]
then 
    printf "${YELLOW}store.test.ts ${RED}dose NOT exists${NC} \n"
    exit 1
fi

if [ ! -f "$COMBINE" ]
then
    printf "${YELLOW}combine.ts ${RED}dose NOT exists${NC} \n"
    exit 1
fi

if [ ! -f "$COMBINE_TEST" ]
then 
    printf "${YELLOW}combine.test.ts ${RED}dose NOT exists${NC} \n"
    exit 1
fi


# test Root Component Files
ROOT="$ROOT_DIRECTORY/module/install_project/dependencies/root/index.tsx"
ROOT_TEST="$ROOT_DIRECTORY/module/install_project/dependencies/root/index.test.tsx"
if [ ! -f "$ROOT" ]
then
    printf "${YELLOW}ROOT index.tsx ${RED}dose NOT exists${NC} \n"
    exit 1
fi

if [ ! -f "$ROOT_TEST" ]
then 
    printf "${YELLOW}Root index.test.ts ${RED}dose NOT exists${NC} \n"
    exit 1
fi

# test Src Files
SRC_INDEX="$ROOT_DIRECTORY/module/install_project/dependencies/src/index.tsx"
SRC_ROUTER="$ROOT_DIRECTORY/module/install_project/dependencies/src/router.tsx"

if [ ! -f "$SRC_INDEX" ]
then
    printf "${YELLOW}SRC index.tsx ${RED}dose NOT exists${NC} \n"
    exit 1
fi

if [ ! -f "$SRC_ROUTER" ]
then 
    printf "${YELLOW}SRC router.test.ts ${RED}dose NOT exists${NC} \n"
    exit 1
fi

exit 0