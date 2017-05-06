FROM node:7.4-alpine
MAINTAINER info@cinder.cloud

RUN apk add -t .gyp --no-cache git python g++ make \
    && npm install -g ethereumjs-testrpc@3.0.x \
    && npm install -g truffle@3.2.x \
    && apk del .gyp

RUN mkdir -p /truffle/scripts /truffle/project

ADD start.sh /truffle/scripts/start.sh
RUN chmod +x /truffle/scripts/start.sh

WORKDIR /truffle/scripts
VOLUME /truffle/project

EXPOSE 8080 8545

ENTRYPOINT ["./start.sh"]
CMD ["watch"]