## reactjs-template-app 

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
If you're in a Unix environment and have `make` installed, you can run `make all`.
This will generate a Docker image `jecklgamis/reactjs-template-app` 

Build the app:
```
make all
```
This command does a couple of things:
* It runs `./generate-ssl-certs` to generate self signed certs
* `yarn build` to generate a production build of the React app (see `build` directory)
* `docker build -it jecklgamis/reactjs-template-app` to generate a Docker image.
 
## Running

To run the app in Docker:
```
make run
```
If all things go well, you should have a Docker container running and you should be able to
reach the endpoint `http://localhost:8080` in your browser.

## Contributing
Please raise issue or pull request. Thanks for contributing!

Have fun!