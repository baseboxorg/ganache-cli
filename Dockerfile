FROM node:8-alpine

RUN apk add -t .gyp --no-cache python git bash \
    && npm install -g ganache-cli \
    && apk del .gyp

EXPOSE 8545

ENTRYPOINT ["ganache-cli"]
