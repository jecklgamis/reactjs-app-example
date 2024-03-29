FROM alpine:3.17
MAINTAINER Jerrico Gamis <jecklgamis@gmail.com>

RUN apk update && apk add --no-cache bash curl dumb-init
RUN apk update && apk add --no-cache nodejs npm yarn

RUN mkdir /app
WORKDIR /app

RUN npm install -g serve
COPY build/ /app
COPY docker-entrypoint.sh /

EXPOSE 80
ENTRYPOINT ["/usr/bin/dumb-init", "--"]
CMD ["/docker-entrypoint.sh"]
