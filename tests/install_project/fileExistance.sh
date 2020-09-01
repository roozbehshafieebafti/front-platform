#!/bin/bash

ROOTDIR=$1

RED='\033[0;31m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
NC='\033[0m'

#check directories.sh exists
Directories=/module/install_project/directories.sh
if [ ! -f "$ROOTDIR$Directories" ]
then
    printf "${YELLOW}$Directories ${RED}dosent exists ${NC} \n"
    exit 1
fi

#check files.sh exists
Files=/module/install_project/files.sh
if [ ! -f "$ROOTDIR$Files" ]
then
    printf "${YELLOW}$Files ${RED}dosent exists ${NC} \n"
    exit 1
fi

#check typescript.sh exists
Typescript=/module/install_project/typescript.sh
if [ ! -f "$ROOTDIR$Typescript" ]
then
    printf "${YELLOW}$Typescript ${RED}dosent exists ${NC} \n"
    exit 1
fi


exit 0