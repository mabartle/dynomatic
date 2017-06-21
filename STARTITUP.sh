#!/bin/sh
# Start up script to kick off the DynamoDB(LOCAL) 
# Install DynamoDB LOCALLY and change the directory path below to match where
# it is installed
dynamofiledir=/opt/DYNAMO/
# Set the path below to match where the aws config file resides
awsconfigfilepath=/home/markb/.aws/config
echo 'Starting the DynamoDB Instance LOCALLY'
echo 'Using AWS Config file here:' $awsconfigfilepath
/usr/bin/java -Djava.library.path=$dynamofiledir./DynamoDBLocal_lib/ -jar $dynamofiledir/DynamoDBLocal.jar -sharedDb -inMemory
