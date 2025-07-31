## reactjs-app-example

[![Build](https://github.com/jecklgamis/reactjs-app-example/actions/workflows/build.yml/badge.svg)](https://github.com/jecklgamis/reactjs-app-example/actions/workflows/build.yml)

An example ReactJS app.

Docker:  `docker run -p 8080:8080 -it  jecklgamis/reactjs-app-example:main`

## Requirements
* Docker, Node, NPM

Install dependencies:
```bash
npm install 
```

## Running
Run app in development mode:
```
npm start
```
Run app in Docker:

```bash
npm build
docker build -t reactjs-app-example:main .
docker run -p 8080:8080 -it reactjs-app-example:main
```

## Issues
Please raise issue or pull request?

Have fun!