#!/bin/bash

name="files"
MAIN_DIRECTORY=$1
PROJECT_NAME=$2
RED='\033[0;31m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
NC='\033[0m'

failFunction (){
    if [ $1 == 0 ]
    then 
        printf "$2" #success
    else
        printf "$3"; #fail
        exit 1;
    fi
}

printf "\n${BLUE}start to create $name ${NC} \n";

# fetch api files address
APIS_FILE="$MAIN_DIRECTORY/module/install_project/dependencies/apis/fetch.ts"
APIS_INTERFACE="$MAIN_DIRECTORY/module/install_project/dependencies/apis/fetch.interface.ts"
APIS_FILE_TEST="$MAIN_DIRECTORY/module/install_project/dependencies/apis/fetch.test.ts"

# creates fetch.ts
cat "$APIS_FILE">"$MAIN_DIRECTORY/$PROJECT_NAME/src/apis/fetch.ts"
failFunction $? "${YELLOW}fetch.ts ${GREEN}created${NC} \n" "${RED}fetch.ts can not creat${NC} \n"
# creates fetch.interface.ts
cat "$APIS_INTERFACE">"$MAIN_DIRECTORY/$PROJECT_NAME/src/apis/fetch.interface.ts"
failFunction $? "${YELLOW}fetch.interface.ts ${GREEN}created${NC} \n" "${RED}fetch.interface.ts can not creat${NC} \n"
# create __tests__ dir
if [ ! -d "$MAIN_DIRECTORY/$PROJECT_NAME/src/apis/__tests__" ]
then
    mkdir "$MAIN_DIRECTORY/$PROJECT_NAME/src/apis/__tests__"
    failFunction $? "${YELLOW}__tests__ dir ${GREEN}created ${NC} \n" "${RED}__tests_ dir can not creat${NC} \n"
fi
# create fetch.test.ts
cat "$APIS_FILE_TEST">"$MAIN_DIRECTORY/$PROJECT_NAME/src/apis/__tests__/fetch.test.ts"
failFunction $? "${YELLOW}fetch.test.ts ${GREEN}created${NC} \n" "${RED}fetch.test.ts can not creat${NC} \n"




# redux store and combine files
STORE="$MAIN_DIRECTORY/module/install_project/dependencies/redux/store.ts"
STORE_TEST="$MAIN_DIRECTORY/module/install_project/dependencies/redux/store.test.ts"
COMBINE="$MAIN_DIRECTORY/module/install_project/dependencies/redux/combine.ts"
COMBINE_TEST="$MAIN_DIRECTORY/module/install_project/dependencies/redux/combine.test.ts"

# create store
cat "$STORE">"$MAIN_DIRECTORY/$PROJECT_NAME/src/redux/store.ts"
failFunction $? "${YELLOW}store.ts ${GREEN}created${NC} \n" "${RED}store.ts can not creat${NC} \n"
# create combine
cat "$COMBINE">"$MAIN_DIRECTORY/$PROJECT_NAME/src/redux/combine.ts"
failFunction $? "${YELLOW}combine.ts ${GREEN}created${NC} \n" "${RED}combine.ts can not creat${NC} \n"
# create __tests__ dir
if [ ! -d "$MAIN_DIRECTORY/$PROJECT_NAME/src/redux/__tests__" ]
then
    mkdir "$MAIN_DIRECTORY/$PROJECT_NAME/src/redux/__tests__"
    failFunction $? "${YELLOW}__tests__ dir ${GREEN}created${NC} \n" "${RED}__tests_ dir can not creat${NC} \n"
fi
# create store.test.ts
cat "$STORE_TEST">"$MAIN_DIRECTORY/$PROJECT_NAME/src/redux/__tests__/store.test.ts"
failFunction $? "${YELLOW}store.test.ts ${GREEN}created${NC} \n" "${RED}store.test.ts can not creat${NC} \n"
# create combine.test.ts
cat "$COMBINE_TEST">"$MAIN_DIRECTORY/$PROJECT_NAME/src/redux/__tests__/combine.test.ts"
failFunction $? "${YELLOW}combine.test.ts ${GREEN}created${NC} \n" "${RED}combine.test.ts can not creat${NC} \n"




# root components and test files
ROOT="$MAIN_DIRECTORY/module/install_project/dependencies/root/index.tsx"
ROOT_TEST="$MAIN_DIRECTORY/module/install_project/dependencies/root/index.test.tsx"
# create root dir
if [ ! -d "$MAIN_DIRECTORY/$PROJECT_NAME/src/containers/root" ]
then
    mkdir "$MAIN_DIRECTORY/$PROJECT_NAME/src/containers/root"
    failFunction $? "${YELLOW}root dir ${GREEN}created${NC} \n" "${RED}root dir can not creat${NC} \n"
fi
# create root index
cat "$ROOT">"$MAIN_DIRECTORY/$PROJECT_NAME/src/containers/root/index.tsx"
failFunction $? "${YELLOW}root index.tsx ${GREEN}created${NC} \n" "${RED}root index.tsx can not creat${NC} \n"
# create __tests__ dir
if [ ! -d "$MAIN_DIRECTORY/$PROJECT_NAME/src/containers/root/__tests__" ]
then
    mkdir "$MAIN_DIRECTORY/$PROJECT_NAME/src/containers/root/__tests__"
    failFunction $? "${YELLOW}root __tests__ dir ${GREEN}created${NC} \n" "${RED}root __tests_ dir can not creat${NC} \n"
fi
# create index.test.tsx
cat "$ROOT_TEST">"$MAIN_DIRECTORY/$PROJECT_NAME/src/containers/root/__tests__/index.test.tsx"
failFunction $? "${YELLOW}root index.test.tsx ${GREEN}created${NC} \n" "${RED}root index.test.tsx can not creat${NC} \n"


# delete unnecessary files
rm -f "$MAIN_DIRECTORY/$PROJECT_NAME/src/App.css";
failFunction $? "${YELLOW}App.css ${RED}deleted${NC}\n" "${RED}App.css can not be deleted${NC}\n"
rm -f "$MAIN_DIRECTORY/$PROJECT_NAME/src/App.test.tsx"
failFunction $? "${YELLOW}App.test.tsx ${RED}deleted ${NC}\n" "${RED}App.test.tsx can not be deleted${NC}\n"
rm -f "$MAIN_DIRECTORY/$PROJECT_NAME/src/App.tsx"
failFunction $? "${YELLOW}App.tsx ${RED}deleted ${NC}\n" "${RED}App.tsx can not be deleted${NC}\n"
rm -f "$MAIN_DIRECTORY/$PROJECT_NAME/src/index.css"
failFunction $? "${YELLOW}index.css ${RED}deleted ${NC}\n" "${RED}index.css can not be deleted${NC}\n"
rm -f "$MAIN_DIRECTORY/$PROJECT_NAME/src/index.tsx"
failFunction $? "${YELLOW}index.tsx ${RED}deleted ${NC}\n" "${RED}index.tsx can not be deleted${NC}\n"
rm -f "$MAIN_DIRECTORY/$PROJECT_NAME/src/logo.svg"
failFunction $? "${YELLOW}logo.svg ${RED}deleted ${NC}\n" "${RED}logo.svg can not be deleted${NC}\n"

# ceate src files
SRC_INDEX="$MAIN_DIRECTORY/module/install_project/dependencies/src/index.tsx"
SRC_ROUTER="$MAIN_DIRECTORY/module/install_project/dependencies/src/router.tsx"
cat "$SRC_INDEX">"$MAIN_DIRECTORY/$PROJECT_NAME/src/index.tsx"
failFunction $? "${YELLOW}SRC index.tsx ${GREEN}created${NC}\n" "${RED}SRC index.tsx can not creat${NC}\n"
cat "$SRC_ROUTER">"$MAIN_DIRECTORY/$PROJECT_NAME/src/router.tsx"
failFunction $? "${YELLOW}SRC router.tsx ${GREEN}created${NC}\n" "${RED}SRC router.tsx can not creat${NC}\n"