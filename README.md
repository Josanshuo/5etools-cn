# 5etools Chinese version docker image

[5e.tools](https://5e.tools/) is a free suite of tools for 5th Edition Dungeons & Dragons players and Dungeon Masters. Its source could be found [here](https://github.com/5etools-mirror-1/5etools-mirror-1.github.io).

This repo is creating a docker image for Chinese version [5etools](https://5e.dickytwister.org/5etools.html), where the source is located [here](https://github.com/fvtt-cn/5etools/tree/master). For English version docker image, please refer to this Git [repo](https://github.com/Typhonragewind/5etools-docker) or the Docker hub [image](https://hub.docker.com/r/jafner/5etools-docker).

## Prepare

Download the latest Chinese 5etools source from its repo, and put into `websites` folder:
```
git clone --depth 1 --branch master https://github.com/fvtt-cn/5etools.git websites 
```

## Build

Build docker image with multiple name and tags:
```
docker build -t <USER>/<NAME>:latest -t <USER>/<NAME>:202311 .
```

## Run local

To run it in local:
```
docker run -p 7775:7775 <USER>/<NAME>
```

## Docker composer

If you would like to use this image into a Docker composer:
```
version: '3.4'
services:
    5etools-cn:
        restart: always
        container_name: 5etools-cn
        build: 
          context: .
          dockerfile: Dockerfile
        ports:
            - 7775:7775
        volumes:
            - ./5etools-cn/homebrew:/websites/homebrew
```
