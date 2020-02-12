# OPERA

<img src="https://assets.gitlab-static.net/uploads/-/system/project/avatar/12904471/opera_logo.jpg" width="200" height="200"/>

## INDEX

- [OPERA](#opera)
  - [INDEX](#index)
  - [BADGES](#badges)
  - [INTRODUCTION](#introduction)
  - [PREREQUISITES](#prerequisites)
  - [INSTALL](#install)
  - [LICENSE](#license)

## BADGES

[![pipeline status](https://gitlab.com/oda-alexandre/opera/badges/master/pipeline.svg)](https://gitlab.com/oda-alexandre/opera/commits/master)

## INTRODUCTION

Docker image of :

- [opera](https://www.opera.com/fr)

Continuous integration on :

- [gitlab](https://gitlab.com/oda-alexandre/android-studio/pipelines)

Automatically updated on :

- [docker hub public](https://hub.docker.com/r/alexandreoda/opera/).

## PREREQUISITES

Use [docker](https://www.docker.com)

## INSTALL

```docker run -d --name opera -v ${HOME}:/home/opera -v /tmp/.X11-unix/:/tmp/.X11-unix/ -v /dev/snd:/dev/snd -v /dev/shm:/dev/shm -v /var/run/dbus:/var/run/dbus -e PULSE_SERVER=unix:${XDG_RUNTIME_DIR}/pulse/native -v ${XDG_RUNTIME_DIR}/pulse/native:${XDG_RUNTIME_DIR}/pulse/native --group-add $(getent group audio | cut -d: -f3) -e DISPLAY --network host alexandreoda/opera```

## LICENSE

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://gitlab.com/oda-alexandre/opera/blob/master/LICENSE)
