#!/bin/bash

PROJECT_NAME=$1

# check if the directory exists or not
if [ ! -d "$PROJECT_NAME" ]
then
    # create typescript project
    #npx create-react-app $PROJECT_NAME --template typescript
    if [ $? != 0 ]
    then
        exit 1
    else
        exit 0
    fi
else
    echo "directory exists"
    exit 0
fi