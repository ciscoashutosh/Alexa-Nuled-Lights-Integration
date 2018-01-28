#!/bin/bash

set -x
rm index.zip 
cd lambda 
zip --recurse-paths ../index.zip *
cd .. 
aws lambda update-function-code --function-name AlexaNuledFunctions --zip-file fileb://index.zip

