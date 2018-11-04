# OPERA

![opera](https://raw.githubusercontent.com/oda-alexandre/opera/master/logo-opera.png) ![docker](https://raw.githubusercontent.com/oda-alexandre/opera/master/logo-docker.png)


## INDEX

- [Build Docker](#BUILD)
- [Introduction](#INTRODUCTION)
- [Prerequis](#PREREQUIS)
- [Installation](#INSTALLATION)
- [License](#LICENSE)


## BUILD DOCKER

[![opera docker build](https://img.shields.io/docker/build/alexandreoda/opera.svg)](https://hub.docker.com/r/alexandreoda/opera)


## INTRODUCTION

Ce repository contient le fichier Dockerfile de [Opera](https://www.opera.com/fr) pour [Docker](https://www.docker.com), mis à jour automatiquement dans le [Docker Hub](https://hub.docker.com/r/alexandreoda/opera/) public.


## PREREQUIS

Installer [Docker](https://www.docker.com)


## INSTALLATION

```
mkdir $HOME/opera
```
```
docker run -d --name opera -v /tmp/.X11-unix/:/tmp/.X11-unix/ -v /dev/snd:/dev/snd -v /dev/shm:/dev/shm -v /var/run/dbus:/var/run/dbus -e PULSE_SERVER=unix:${XDG_RUNTIME_DIR}/pulse/native -v ${XDG_RUNTIME_DIR}/pulse/native:${XDG_RUNTIME_DIR}/pulse/native --group-add $(getent group audio | cut -d: -f3) -v ${HOME}/opera:/home/opera/Downloads -e DISPLAY --network host alexandreoda/opera
```

## LICENSE

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://github.com/oda-alexandre/opera/blob/master/LICENSE)
