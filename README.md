# kimyvgy/gowatch

This docker image provides `gowatch` script & `nodemon` that helps develop Golang applications by automatically restarting/rebuilding the application when file changes in the directory are detected.

## Usage

```bash
# attach into `golang` container:
docker exec -it golang sh

# run *.go file & watch files change
gowatch run ./cmd/server/main.go start

# build *.go to binary file
# watch files change to rebuild to binary
gowatch build ./cmd/server/main.go -o ./build/server
```

## Setup

```yaml
# docker-compose.yml
version: "3.7"

services:
    golang:
        image: kimyvgy/gowatch:1.17-alpine
        tty: true
        working_dir: /src
        volumes:
            - ./project:/src
```

## Build

```bash
# buid all versions:
make build

# build for one:
make build TAG=1.17-alpine
```

## References
- https://github.com/kimyvgy/docker-gowatch
- https://www.npmjs.com/package/nodemon
