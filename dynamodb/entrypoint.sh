#!/bin/sh

# Startup script for DynamoDB.
#
# Assumes that DYNAMO_DB_HOME (the folder that is extracted after download)
# is set. All parameters can be set via "DYNAMO_DB_<param>"

java -Djava.library.path="${DYNAMO_DB_HOME}/DynamoDBLocal_lib" \
     -jar "${DYNAMO_DB_HOME}/DynamoDBLocal.jar" \
     -port "${DYNAMO_DB_PORT:-8080}" \
     -cors "${DYNAMO_DB_CORS:-'*'}" \
     -dbPath "${DYNAMO_DB_DATA:-/tmp}"
    "${@}"
