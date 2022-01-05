FROM golang:1.17-alpine

WORKDIR /src

RUN apk add nodejs npm --no-cache
RUN npm install -g nodemon

COPY gowatch.sh /usr/local/bin/gowatch
