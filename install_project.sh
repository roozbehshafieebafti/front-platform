#!/bin/bash

if [ $1 ]
then
    PROJECT_NAME=$1
else
    echo "please choose name for project"
    exit;
fi

# utills
failFunction (){
    if [ $1 == 0 ]
    then 
        echo "$2" #success
    else
        echo "$3"; #fail
        exit 1;
    fi
}



DIRCTORY=`pwd`

# run tests
./tests/install_project/fileExistance.sh "$DIRCTORY"
failFunction $? "existance tests was successfull" "tests fail"
./tests/install_project/dependencies.sh "$DIRCTORY"
failFunction $? "dependencies tests was successfull" "tests fail"


# install typescript
./module/install_project/typescript.sh $PROJECT_NAME
failFunction $? "successfully install react typescript" "fail to install react typescript"
#create directories
./module/install_project/directories.sh $PROJECT_NAME
    