IMAGE_NAME:=jecklgamis/reactjs-template-app
IMAGE_TAG:=latest

default:
	echo $(IMAGE_TAG)
	cat ./Makefile
dist:
	 @yarn build
image:
	 docker build -t $(IMAGE_NAME):$(IMAGE_TAG) .
run-bash:
	 @docker run -i -t $(IMAGE_NAME):$(IMAGE_TAG) /bin/bash
run:
	 @docker run -p 8080:8080 -it $(IMAGE_NAME):$(IMAGE_TAG)
ssl-certs:
	 @./generate-ssl-certs.sh
all : ssl-certs dist image
up: all run

install-deps:
	 @yarn install
run-app-dev-mode:
	 @./run-app-dev-mode.sh
run-app-dev-mode-ssl:
	 @./run-app-dev-mode.sh ssl
clean:
	 @rm -rf ./build
push:
	 docker push $(IMAGE_NAME):$(IMAGE_TAG)
