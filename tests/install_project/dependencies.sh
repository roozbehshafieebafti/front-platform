#!/bin/bash

# internt connection
ping -c 1 -q google.com >&/dev/null;
if [ $? != 0 ]
then 
    echo "you don't have internet conection"
    exit 1
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