## reactjs-app-example 

[![CircleCI](https://circleci.com/gh/jecklgamis/reactjs-app-example.svg?style=svg)](https://circleci.com/gh/jecklgamis/reactjs-app-example)

A ReactJS template app using Docker.

## Requirements
* Docker 19.03+
* NodeJS v13.2+
* NPM v6.13+

## Running

Install app dependencies:

```
yarn install 
```

Run the app:
```
yarn start
```

Run the app using HTTPS:
```
./generate-ssl-certs.sh
HTTPS=true SSL_CRT_FILE=server.crt SSL_KEY_FILE=server.key yarn start
```
## Building

This assumes you are in a Unix like environment (Mac OSX, Linux etc.) and have `make` command installed. 
A `Makefile` is provided to wrap commonly used CLI commands and can save lots of key strokes. 

Build the Docker image:
```
make all
```

This command does a couple of things:
* It runs `./generate-ssl-certs.sh` to generate self signed certs
* It runs `yarn build` to generate a production build of the React app (see `build` directory)
* It runs `docker build -it jecklgamis/reactjs-app-example:latest` to generate a Docker image
 
## Running In Docker

```
make run
```
If things go well, you should be able to reach the endpoint `http://localhost:8080` in your browser.

## Contributing
Please raise issue or pull request. Thanks for contributing!

Have fun!