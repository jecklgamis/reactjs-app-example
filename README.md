## reactjs-template-app 

A ReactJS template app using Docker.

Run the Docker container
```
docker run -it  jecklgamis/reactjs-template-app:latest  
``` 

## Requirements
* Docker 19.03+
* NodeJS v13.2+
* NPM v6.13+

Run `yarn install` to install app dependencies

## Running In Dev Mode

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
This command runs:
* Runs `./generate-ssl-certs` to generate self signed cert. This generates `./server.cert`
  `./server.key` SSH key pairs to be used server certificates. 
WARNING: Replace this with a proper CA signed certificate if you are use these in production
* Runs `yarn build` to generate a production build
* Runs `docker build -it jecklgamis/reactjs-template-app` generates a Docker image.
 
## Running

To run the app in Docker:
```
make run
```
If all things go well, you should have a Docker container running and you shold be able to
reach the endpoint `http://localhost:5000` in your browser.

## Customizing This Template
* Change all references of `reactjs-template-app` to suit your project name
* Provide your own server certificates (`server.key` and `server.crt`)

## Contributing
Please raise issue or pull request. Thanks for contributing!

Have fun!