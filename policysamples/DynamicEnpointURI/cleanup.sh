#!/bin/bash

source ../setenv.sh

apiName=samples-dynamic-endpoint
basePath=/samples-dynamic-endpoint

#1. Undeploy
curl -u $credentials "$url/v1/organizations/$org/apis/$apiName/revisions/1/deployments?action=undeploy&env=$environment&basepath=$basePath" -X POST -H "Content-Type: application/octet-stream" -k

#2. Delete Sample
curl -u $credentials "$url/v1/organizations/$org/apis/$apiName" -X DELETE -k
