FROM mhart/alpine-node:8
LABEL maintainer="Andrey Gulitsky <andrey@gulitsky.me>"

RUN apk add --no-cache make gcc g++ python git

RUN git clone -b 2018_3_updates https://github.com/oraclize/ethereum-bridge.git
WORKDIR /ethereum-bridge
RUN yarn install --production

ENTRYPOINT [ "node", "bridge" ]