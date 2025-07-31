FROM ubuntu:24.04
LABEL org.opencontainers.image.authors="jecklgamis@gmail.com"

RUN apt update -y && apt install -y curl dumb-init npm yarn xsel && apt clean all && rm -rf /var/lib/apt/lists/*

RUN mkdir /app
WORKDIR /app

RUN npm install -g serve
COPY dist/ /app

EXPOSE 8080
COPY docker-entrypoint.sh /

EXPOSE 80
ENTRYPOINT ["/usr/bin/dumb-init", "--"]
CMD ["/docker-entrypoint.sh"]
