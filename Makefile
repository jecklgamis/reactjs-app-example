IMAGE_NAME:=reactjs-app-example
IMAGE_TAG:=main

default:
	@cat ./Makefile
install-deps:
	 @npm install
upgrade-deps:
	npm i -g npm-check-updates
	ncu -u
	npm install
.PHONY: dist
dist:
	 @npm run build
image:
	 docker build -t $(IMAGE_NAME):$(IMAGE_TAG) .
run-shell:
	 @docker run -it $(IMAGE_NAME):$(IMAGE_TAG) /bin/bash
exec-shell:
	 @docker exec -it $(shell docker ps -q --filter ancestor=$(IMAGE_NAME):$(IMAGE_TAG)) /bin/bash
run:
	 @docker run -p 8080:8080 -it $(IMAGE_NAME):$(IMAGE_TAG)
run-dev:
	@npm run dev
clean:
	 @rm -rf ./build

all : dist image
up: dist image run
