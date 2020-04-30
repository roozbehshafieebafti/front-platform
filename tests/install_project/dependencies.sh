#!/bin/bash

# internt connection
if [ $2 = "-l" ]
then 
    ping -c 1 -q google.com >&/dev/null;
    if [ $? != 0 ]
    then 
        echo "you don't have internet conection, in linux operation system"
        exit 1
    fi
else
    if [ $2 = "-w" ]
    then
        ping google.com -n 1 >&/dev/null
        if [ $? != 0 ]
        then 
            echo "you don't have internet conection, in windows operation system"
            exit 1
        fi
    else
        echo 'i cant test your internt connection, i hope it will be connect'
    fi
fi

# node install
Node=`node -v`
if [ $? != 0 ]
then
    echo "NODE Js is not installed in your system"
    exit 1
fi

# npx install
Npx=`npx -v`
if [ $? != 0 ]
then
    echo "npx is not installed in your system"
    exit 1
fi


# yarn insatll
Yarn=`yarn -v`
if [ $? != 0 ]
then
    echo "yarn is not installed in your system"
    exit 1
fi