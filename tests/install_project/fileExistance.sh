#!/bin/bash

ROOTDIR=$1


#check directories.sh exists
Directories=/module/install_project/directories.sh
if [ ! -f "$ROOTDIR$Directories" ]
then
    echo "$Directories dosent exists"
    exit 1
fi

#check files.sh exists
Files=/module/install_project/files.sh
if [ ! -f "$ROOTDIR$Files" ]
then
    echo "$Files dosent exists"
    exit 1
fi

#check typescript.sh exists
Typescript=/module/install_project/typescript.sh
if [ ! -f "$ROOTDIR$Typescript" ]
then
    echo "$Typescript dosent exists"
    exit 1
fi


exit 0