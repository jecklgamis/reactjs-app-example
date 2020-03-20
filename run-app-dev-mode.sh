#!/usr/bin/env bash

USE_SSL=$1
if [ ! -z "${USE_SSL}" ]; then
  echo "Starting app using SSL"
  HTTPS=true SSL_CRT_FILE=server.crt SSL_KEY_FILE=server.key yarn start
else
  echo "Starting app"
  yarn start
fi

