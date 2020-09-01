#!/bin/bash


RED='\033[0;31m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
NC='\033[0m'


if [ $1 ]
then
    PROJECT_NAME=$1
else
    printf "please choose ${RED}NAME ${NC}for project \n"
    exit;
fi

if [ $2 ]
then 
    PLATFORM=$2
else
    #  linux platform
    PLATFORM=-l
fi

# utills
failFunction (){
    if [ $1 == 0 ]
    then 
        printf "$2" #success
    else
        printf "$3"; #fail
        exit 1;
    fi
}



DIRCTORY=`pwd`

# run tests
./tests/install_project/fileExistance.sh "$DIRCTORY"
failFunction $? "${YELLOW}existance tests was ${GREEN}successfull${NC} \n" "${RED}tests fail${NC}\n"
./tests/install_project/dependencies.sh "$DIRCTORY" "$PLATFORM"
failFunction $? "${YELLOW}dependencies tests was ${GREEN}successfull${NC} \n" "${RED}tests fail${NC}\n"
./tests/install_project/files.sh "$DIRCTORY"
failFunction $? "${YELLOW}files tests was ${GREEN}successfull${NC} \n" "${RED}tests fail${NC}\n"

# install typescript
./module/install_project/typescript.sh $PROJECT_NAME
failFunction $? "${GREEN}react typescript passed${NC} \n" "${RED}fail to install react typescript${NC} \n"
# create directories
./module/install_project/directories.sh $PROJECT_NAME
failFunction $? "${GREEN}successfully create directories${NC} \n" "${RED}fail to create directories${NC} \n"
# create files
./module/install_project/files.sh "$DIRCTORY" "$PROJECT_NAME"
failFunction $? "successfully create files" "fail to create files"