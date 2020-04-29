#!/bin/bash

name="files"
MAIN_DIRECTORY=$1

failFunction (){
    if [ $1 == 0 ]
    then 
        echo "$2" #success
    else
        echo "$3"; #fail
        exit 1;
    fi
}

echo "***   start to create $name   ***";

APIS=$MAIN_DIRECTORY"/module/install_project/dependencies/apis/fetch.ts"
cat "$APIS">fetch.ts