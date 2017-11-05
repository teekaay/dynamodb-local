FROM mhart/alpine-node:8

ARG DYNAMODB_ENDPOINT="http://localhost:8030"
ENV DYNAMO_ENDPOINT="${DYNAMODB_ENDPOINT}"

RUN mkdir -p /.npm && \
    chown -R nobody:nobody /.npm /usr/lib/node_modules

RUN npm install dynamodb-admin -g && \
    chown -R nobody:nobody /usr/bin/dynamodb-admin

USER nobody

ENTRYPOINT ["dynamodb-admin"]


