#!/bin/bash

PROJECT_NAME=$1

# utill function
failFunction (){
    if [ $1 == 0 ]
    then 
        echo "$2" #success
    else
        echo "$3"; #fail
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
    echo "directory exists"
fi


cd "$PROJECT_NAME"
failFunction $? "cd to $PROJECT_NAME" "can NOT cd to $PROJECT_NAME"

# install other libraries
echo "Would you like to install dependencies? y/n"
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