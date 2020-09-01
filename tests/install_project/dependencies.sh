#!/bin/bash


RED='\033[0;31m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
NC='\033[0m'

# internt connection
if [ $2 = "-l" ]
then 
    ping -c 1 -q google.com >&/dev/null;
    if [ $? != 0 ]
    then 
        printf "${YELLOW}you don't have internet conection, in linux operation system${NY} \n"
        exit 1
    fi
else
    if [ $2 = "-w" ]
    then
        ping google.com -n 1 >&/dev/null
        if [ $? != 0 ]
        then 
            printf "${YELLOW}you don't have internet conection, in windows operation system${NY} \n"
            exit 1
        fi
    else
        printf "${BLUE}i cant test your internt connection, i hope it will be connected :)${NY} \n"
    fi
fi

# node install
Node=`node -v`
if [ $? != 0 ]
then
    printf "${RED}NODE Js is not installed on your system${NY} \n"
    exit 1
fi

# npx install
Npx=`npx -v`
if [ $? != 0 ]
then
    printf "${RED}npx is not installed on your system${NY} \n"
    exit 1
fi


# yarn insatll
Yarn=`yarn -v`
if [ $? != 0 ]
then
    printf "${RED}yarn is not installed on your system${NY} \n"
    exit 1
fi