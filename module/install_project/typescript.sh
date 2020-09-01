#!/bin/bash

PROJECT_NAME=$1

RED='\033[0;31m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
NC='\033[0m'

# utill function
failFunction (){
    if [ $1 == 0 ]
    then 
        printf "$2" #success
    else
        printf "$3"; #fail
        exit 1;
    fi
}


# check if the directory exists or not
if [ ! -d "$PROJECT_NAME" ]
then
    # create typescript project
    npx create-react-app $PROJECT_NAME --template typescript
    if [ $? != 0 ]
    then
        exit 1
    fi
else
    printf "${GREEN}directory exists ${NY} \n"
fi


cd "$PROJECT_NAME"
failFunction $? "${YELLOW}cd to $PROJECT_NAME ${NY} \n" "${RED}can NOT cd to $PROJECT_NAME ${NY} \n"

# install other libraries
printf "\n ${BLUE}Would you like to install dependencies? y/n  "
read Answer
if [ $Answer = "y" ]
then
    yarn add react-router-dom @types/react-router-dom redux react-redux @types/react-redux redux-thunk redux-logger @types/redux-logger
    if [ $? != 0 ]
    then
        exit 1
    fi
fi    

cd ..
exit 0