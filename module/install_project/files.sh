#!/bin/bash

name="files"

failFunction (){
    if [ $1 == 0 ]
    then 
        echo "$2" #success
    else
        echo "$3"; #fail
        exit 1;
    fi
}

echo "***   start to create $name   ***";
