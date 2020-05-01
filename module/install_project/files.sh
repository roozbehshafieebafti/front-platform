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
if [ ! -d "$MAIN_DIRECTORY/$PROJECT_NAME/src/apis/__tests__" ]
then
    mkdir "$MAIN_DIRECTORY/$PROJECT_NAME/src/apis/__tests__"
    failFunction $? "__tests__ dir created" "__tests_ dir can not creat"
fi
# create fetch.test.ts
cat "$APIS_FILE_TEST">"$MAIN_DIRECTORY/$PROJECT_NAME/src/apis/__tests__/fetch.test.ts"
failFunction $? "fetch.test.ts created" "fetch.test.ts can not creat"




# redux store and combine files
STORE="$MAIN_DIRECTORY/module/install_project/dependencies/redux/store.ts"
STORE_TEST="$MAIN_DIRECTORY/module/install_project/dependencies/redux/store.test.ts"
COMBINE="$MAIN_DIRECTORY/module/install_project/dependencies/redux/combine.ts"
COMBINE_TEST="$MAIN_DIRECTORY/module/install_project/dependencies/redux/combine.test.ts"

# create store
cat "$STORE">"$MAIN_DIRECTORY/$PROJECT_NAME/src/redux/store.ts"
failFunction $? "store.ts created" "store.ts can not creat"
# create combine
cat "$COMBINE">"$MAIN_DIRECTORY/$PROJECT_NAME/src/redux/combine.ts"
failFunction $? "combine.ts created" "combine.ts can not creat"
# create __tests__ dir
if [ ! -d "$MAIN_DIRECTORY/$PROJECT_NAME/src/redux/__tests__" ]
then
    mkdir "$MAIN_DIRECTORY/$PROJECT_NAME/src/redux/__tests__"
    failFunction $? "__tests__ dir created" "__tests_ dir can not creat"
fi
# create store.test.ts
cat "$STORE_TEST">"$MAIN_DIRECTORY/$PROJECT_NAME/src/redux/__tests__/store.test.ts"
failFunction $? "store.test.ts created" "store.test.ts can not creat"
# create combine.test.ts
cat "$COMBINE_TEST">"$MAIN_DIRECTORY/$PROJECT_NAME/src/redux/__tests__/combine.test.ts"
failFunction $? "combine.test.ts created" "combine.test.ts can not creat"