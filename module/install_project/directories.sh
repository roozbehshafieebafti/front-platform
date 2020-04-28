#!/bin/bash

# variables
name="directories"
PROJECT_NAME=$1;

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

cd ./$PROJECT_NAME;
failFunction $? "cd to $PROJECT_NAME" "can not cd to $PROJECT_NAME"




echo "***   start to create $name   ***";

#----- create and cd src -----#
if [ -d src ]
then    
    cd ./src
    failFunction $? "cd src" "can't cd src $0"
else
    mkdir src
    failFunction $? "make src directory" "can't make src $0"
    cd ./src
fi

#------ create __tests__ -----#
if [ -d __tests__ ]
then    
    echo "__tests__ exists"
else
    mkdir __tests__
    failFunction $? "   -- __tests__ directory" "can't make __tests__ $0"
fi


#------ create apis -----#
if [ -d apis ]
then    
    echo "apis exists"
else
    mkdir apis
    failFunction $? "   -- apis directory" "can't make apis $0"
fi



#------ create assets -----#
if [ -d assets ]
then    
    echo "assets exists"
else
    mkdir assets
    failFunction $? "   -- assets directory" "can't make apis $0"
fi



#------ create components -----#
if [ -d components ]
then    
    echo "components exists"
else
    mkdir components
    failFunction $? "   -- components directory" "can't make apis $0"
fi



#------ create containers -----#
if [ -d containers ]
then    
    echo "containers exists"
else
    mkdir containers
    failFunction $? "   -- containers directory" "can't make apis $0"
fi




#------ create redux -----#
if [ -d redux ]
then    
    echo "redux exists"
else
    mkdir redux
    failFunction $? "   -- redux directory" "can't make apis $0"
fi




#------ create utills -----#
if [ -d utills ]
then    
    echo "utills exists"
else
    mkdir utills
    failFunction $? "   -- utills directory" "can't make apis $0"
fi