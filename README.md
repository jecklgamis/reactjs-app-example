## reactjs-app-example 

[![Build](https://github.com/jecklgamis/reactjs-app-example/actions/workflows/build.yml/badge.svg)](https://github.com/jecklgamis/reactjs-app-example/actions/workflows/build.yml)

A ReactJS template app using Docker.

Docker:  `docker run -p 8080:8080 -it  jecklgamis/reactjs-app-example:main`


## Requirements
* Docker 19.03+
* NodeJS v13.2+
* NPM v6.13+

## Running

Install app dependencies:

```
npm install 
```

Run the app:
```
npm start
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

## Running In Docker

```
make run
```
If things go well, you should be able to reach the endpoint `http://localhost:8080` in your browser.

## Contributing
Please raise issue or pull request. Thanks for contributing!

Have fun!