IMAGE_NAME:=jecklgamis/reactjs-app-example
IMAGE_TAG:=main

default:
	cat ./Makefile
dist:
	 @yarn build
image:
	 docker build -t $(IMAGE_NAME):$(IMAGE_TAG) .
run-shell:
	 @docker run -i -t $(IMAGE_NAME):$(IMAGE_TAG) /bin/bash
run:
	 @docker run -p 8080:8080 -it $(IMAGE_NAME):$(IMAGE_TAG)
ssl-certs:
	 @./generate-ssl-certs.sh
all : ssl-certs dist image
up: all run

install-deps:
	 @yarn install
upgrade-deps:
	npm i -g npm-check-updates
	ncu -u
	npm install
run-app-dev-mode:
	 @./run-app-dev-mode.sh
run-app-dev-mode-ssl:
	 @./run-app-dev-mode.sh ssl
clean:
	 @rm -rf ./build
