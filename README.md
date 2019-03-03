# OPERA

[![dockeri.co](https://dockeri.co/image/alexandreoda/opera)](https://hub.docker.com/r/alexandreoda/opera)


## INDEX

- [Badges](#BADGES)
- [Introduction](#INTRODUCTION)
- [Prerequis](#PREREQUIS)
- [Installation](#INSTALLATION)
- [License](#LICENSE)


## BADGES

[![version](https://images.microbadger.com/badges/version/alexandreoda/opera.svg)](https://microbadger.com/images/alexandreoda/opera)
[![size](https://images.microbadger.com/badges/image/alexandreoda/opera.svg)](https://microbadger.com/images/alexandreoda/opera")
[![build](https://img.shields.io/docker/build/alexandreoda/opera.svg)](https://hub.docker.com/r/alexandreoda/opera)
[![automated](https://img.shields.io/docker/automated/alexandreoda/opera.svg)](https://hub.docker.com/r/alexandreoda/opera)


## INTRODUCTION

Ce repository contient le fichier Dockerfile de

- [opera](https://www.opera.com/fr)

Mis à jour automatiquement dans le [docker hub public](https://hub.docker.com/r/alexandreoda/opera/).


## PREREQUIS

Installer [docker](https://www.docker.com)


## INSTALLATION

```
docker run -d --name opera -v /tmp/.X11-unix/:/tmp/.X11-unix/ -v /dev/snd:/dev/snd -v /dev/shm:/dev/shm -v /var/run/dbus:/var/run/dbus -e PULSE_SERVER=unix:${XDG_RUNTIME_DIR}/pulse/native -v ${XDG_RUNTIME_DIR}/pulse/native:${XDG_RUNTIME_DIR}/pulse/native --group-add $(getent group audio | cut -d: -f3) -v ${HOME}:/home/opera -e DISPLAY --network host alexandreoda/opera
```


## LICENSE

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://github.com/oda-alexandre/opera/blob/master/LICENSE)
