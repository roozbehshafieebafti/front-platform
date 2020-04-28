#!/bin/bash

PROJECT_NAME=$1
#npx create-react-app $PROJECT_NAME --template typescript
echo 'yes'
if [ $? != 0 ]
then
    exit 1
else
    exit 0
fi