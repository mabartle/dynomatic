#!/bin/sh
# Start up script to kick off the DynamoDB(LOCAL) 
dynamofiledir=/opt/DYNAMO/
awsconfigfilepath=/home/markb/.aws/config
echo 'Starting the DynamoDB Instance LOCALLY'
echo 'Using AWS Config file here:' $awsconfigfilepath
/usr/bin/java -Djava.library.path=$dynamofiledir./DynamoDBLocal_lib/ -jar $dynamofiledir/DynamoDBLocal.jar -sharedDb -inMemory
