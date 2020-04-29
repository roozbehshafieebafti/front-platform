#!/bin/bash

name="files"
MAIN_DIRECTORY=$1
PROJECT_NAME=$2

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

# fetch api files address
APIS_FILE="$MAIN_DIRECTORY/module/install_project/dependencies/apis/fetch.ts"
APIS_FILE_TEST="$MAIN_DIRECTORY/module/install_project/dependencies/apis/fetch.test.ts"

# creates fetch.ts
cat "$APIS_FILE">"$MAIN_DIRECTORY/$PROJECT_NAME/src/apis/fetch.ts"
failFunction $? "fetch.ts created" "fetch.ts can not creat"
# create __tests__ dir
mkdir "$MAIN_DIRECTORY/$PROJECT_NAME/src/apis/__tests__"
failFunction $? "__tests__ dir created" "__tests_ dir can not creat"
# create fetch.test.ts
cat "$APIS_FILE_TEST">"$MAIN_DIRECTORY/$PROJECT_NAME/src/apis/__tests__/fetch.test.ts"
failFunction $? "fetch.test.ts created" "fetch.test.ts can not creat"