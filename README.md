# OPERA

![logo](https://assets.gitlab-static.net/uploads/-/system/project/avatar/12904471/opera_logo.jpg)

- [OPERA](#opera)
  - [INDEX](#index)
  - [BADGES](#badges)
  - [INTRODUCTION](#introduction)
  - [PREREQUISITES](#prerequisites)
  - [INSTALL](#install)
    - [DOCKER RUN](#docker-run)
    - [DOCKER COMPOSE](#docker-compose)
  - [LICENSE](#license)

## BADGES

[![pipeline status](https://gitlab.com/oda-alexandre/opera/badges/master/pipeline.svg)](https://gitlab.com/oda-alexandre/opera/commits/master)

## INTRODUCTION

Docker image of :

- [opera](https://www.opera.com/fr)

Continuous integration on :

- [gitlab pipelines](https://gitlab.com/oda-alexandre/android-studio/pipelines)

Automatically updated on :

- [docker hub public](https://hub.docker.com/r/alexandreoda/opera/).

## PREREQUISITES

Use [docker](https://www.docker.com)

## BUILD

### DOCKER RUN

```\
docker run -d \
--name opera \
--group-add audio \
--device /dev/snd \
-e DISPLAY \
-e PULSE_SERVER=unix:${XDG_RUNTIME_DIR}/pulse/native \
-v ${HOME}:/home/opera \
-v /tmp/.X11-unix/:/tmp/.X11-unix/ \
-v /dev/shm:/dev/shm \
-v /var/run/dbus:/var/run/dbus \
-v ${XDG_RUNTIME_DIR}/pulse/native:${XDG_RUNTIME_DIR}/pulse/native \
-p 80 \
-p 443 \
alexandreoda/opera
```

### DOCKER COMPOSE

```yml
version: "2.0"

services:
  opera:
    container_name: opera
    image: alexandreoda/opera
    restart: "no"
    privileged: false
    devices:
      - /dev/snd
    environment:
      - DISPLAY
      - PULSE_SERVER=unix:${XDG_RUNTIME_DIR}/pulse/native
    volumes:
      - "${HOME}:/home/opera"
      - "/tmp/.X11-unix/:/tmp/.X11-unix/"
      - "/dev/shm:/dev/shm"
      - "/var/run/dbus:/var/run/dbus"
      - "${XDG_RUNTIME_DIR}/pulse/native:${XDG_RUNTIME_DIR}/pulse/native"
    ports:
      - "443"
      - "80"
```

## LICENSE

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://gitlab.com/oda-alexandre/opera/blob/master/LICENSE)
