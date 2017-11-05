FROM centos:7

ARG AWS_CITY="frankfurt"
ARG AWS_REGION="eu-central-1"
ARG DYNAMODB_PORT="8080"
ARG DYNAMODB_CORS="*"
ARG DYNAMODB_DATA="/var/lib/data/dynamodb"

ENV DYNAMODB_HOME="/var/opt/dynamodb"
ENV DYNAMODB_BIN="$DYNAMODB_HOME/bin/dynamodb"
ENV DYNAMODB_DATA="${DYNAMODB_DATA}"
ENV DYNAMODB_PORT="${DYNAMODB_PORT}"
ENV DYNAMODB_CORS="${DYNAMODB_CORS}"

RUN yum update -y && \
    yum install -y java-1.8.0-openjdk.x86_64 java-1.8.0-openjdk.x86_64-devel curl

RUN curl -vvv -o dynamodb.tar.gz  https://s3.$AWS_REGION.amazonaws.com/dynamodb-local-$AWS_CITY/dynamodb_local_latest.tar.gz && \
    mkdir -p "${DYNAMODB_HOME}" "${DYNAMODB_DATA}" && \
    tar -xf dynamodb.tar.gz -C "${DYNAMODB_HOME}" && \
    rm dynamodb.tar.gz

COPY entrypoint.sh .

ENTRYPOINT ["./entrypoint.sh"]

