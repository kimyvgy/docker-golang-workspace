# docker-golang-workspace

## Setup

```yaml
# docker-compose.yml
version: "3.7"

services:
    golang:
        image: kimyvgy/golang-workspace:1.17-alpine
        tty: true
        working_dir: /src
        volumes:
            - ./project:/src
```

## Usages

```bash
# attach into `golang` container:
docker exec -it golang sh

# run *.go file & watch files change
gowatch run ./cmd/server/main.go start

# build *.go to binary file
# watch files change to rebuild to binary
gowatch build ./cmd/server/main.go -o ./build/server
```
