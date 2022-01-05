#!/bin/sh

script="$1"

nodemon -e go --signal SIGTERM --exec go run "${script}"
