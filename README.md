# DynamoDB local

This project provides files for running
[DynamoDB](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DynamoDBLocal.html) locally.

The script `dynamodb/entrypoint.sh` is a wrapper around the JAR file as described in the
guide. In addition, we provide a container for a browser-based client
([aaronshaf/dynamodb-admin](https://github.com/aaronshaf/dynamodb-admin)) to
DynamoDB.

# Getting Started

To get started, install `docker` and `docker-compose` first. Afterwards,
run

  docker-compose build

to build both the DynamoDB container and the container for the GUI client.
If the build succeeds, run

  docker-compose up

to start the DynamoDB server on `http://localhost:8030` and the admin on
`http://localhost:8001`.
For a standalone DynamoDB server, run `docker-compose up dynamodb`.
