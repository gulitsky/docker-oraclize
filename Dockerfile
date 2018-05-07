FROM mhart/alpine-node:6
LABEL maintainer="Andrey Gulitsky <andrey@gulitsky.me>"

RUN apk --no-cache --virtual build-dependencies add \
    make gcc g++ python git

RUN git clone -b 2018_3_updates https://github.com/oraclize/ethereum-bridge.git
WORKDIR /ethereum-bridge
# TODO: Use Yarn
RUN npm install --production --silent

RUN apk del build-dependencies && npm cache clean

ENTRYPOINT [ "node", "bridge" ]