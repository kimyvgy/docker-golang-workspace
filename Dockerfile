ARG TAG

FROM golang:${TAG}

WORKDIR /src

RUN apk add nodejs npm --no-cache
RUN npm install -g nodemon

COPY gowatch.sh /usr/local/bin/gowatch
