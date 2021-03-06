#!/bin/bash

source ../setenv.sh

apiName=samples-xmltojson
basePath=/samples-xmltojson

##Cleanup
sh cleanup.sh

##Import and Deploy
../../tools/deploy.py -n $apiName -u $credentials -o $org -e $environment -d ../XMLToJSON
