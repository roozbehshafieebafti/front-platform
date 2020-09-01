#!/bin/bash

# variables
name="directories"
PROJECT_NAME=$1;

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

cd ./$PROJECT_NAME;
failFunction $? "${YELLOW}cd to $PROJECT_NAME ${NC} \n" "${RED}can not cd to $PROJECT_NAME ${NC} \n"



printf "${BLUE}start to create $name \n";

#----- create and cd src -----#
if [ -d src ]
then    
    cd ./src
    failFunction $? "${YELLOW}cd src ${NC} \n" "${RED}can't cd src $0 ${NC} \n"
else
    mkdir src
    failFunction $? "${GREEN}make src directory ${NC} \n" "${RED}can't make src $0 ${NC} \n"
    cd ./src
fi

#------ create __tests__ -----#
if [ -d __tests__ ]
then    
    printf "${YELLOW}__tests__ exists ${NC} \n"
else
    mkdir __tests__
    failFunction $? "${YELLOW}create ${GREEN}__tests__ directory ${NC} \n" "${RED}can't make __tests__ $0 ${NC} \n"
fi


#------ create apis -----#
if [ -d apis ]
then    
    printf "${YELLOW}apis exists ${NC} \n"
else
    mkdir apis
    failFunction $? "${YELLOW}create ${GREEN}apis directory ${NC} \n" "${RED}can't make apis $0 ${NC} \n"
fi



#------ create assets -----#
if [ -d assets ]
then    
    printf "${YELLOW}assets exists ${NC} \n"
else
    mkdir assets
    failFunction $? "${YELLOW}create ${GREEN}assets directory ${NC} \n" "${RED}can't make assets $0 ${NC} \n"
fi



#------ create components -----#
if [ -d components ]
then    
    printf "${YELLOW}components exists ${NC} \n"
else
    mkdir components
    failFunction $? "${YELLOW}create ${GREEN}components directory ${NC} \n" "${RED}can't make components $0 ${NC} \n"
fi



#------ create containers -----#
if [ -d containers ]
then    
    printf "${YELLOW}containers exists ${NC} \n"
else
    mkdir containers
    failFunction $? "${YELLOW}create ${GREEN}containers directory ${NC} \n" "${RED}can't make containers $0 ${NC} \n"
fi




#------ create redux -----#
if [ -d redux ]
then    
    printf "${YELLOW}redux exists ${NC} \n"
else
    mkdir redux
    failFunction $? "${YELLOW}create ${GREEN}redux directory ${NC} \n" "${RED}can't make redux $0 ${NC} \n" 
fi




#------ create utills -----#
if [ -d utills ]
then    
    printf "${YELLOW}utills exists ${NC} \n"
else
    mkdir utills
    failFunction $? "${YELLOW}create ${GREEN}utills directory ${NC} \n" "${RED}can't make utills $0 ${NC} \n"
fi