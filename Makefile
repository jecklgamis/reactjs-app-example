IMAGE_NAME:=jecklgamis/reactjs-app-example
IMAGE_TAG:=main

default:
	cat ./Makefile
dist:
	 @npm run build
image:
	 docker build -t $(IMAGE_NAME):$(IMAGE_TAG) .
run-shell:
	 @docker run -i -t $(IMAGE_NAME):$(IMAGE_TAG) /bin/bash
run:
	 @docker run -p 8080:8080 -it $(IMAGE_NAME):$(IMAGE_TAG)
all : dist image
up: all run

install-deps:
	 @npm install
upgrade-deps:
	npm i -g npm-check-updates
	ncu -u
	npm install
run-app-dev-mode:
	@npm start
clean:
	 @rm -rf ./build
