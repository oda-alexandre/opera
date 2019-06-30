# OPERA

<img src="http://pngimg.com/uploads/opers/opers_PNG15.png" width="200" height="200"/>


## INDEX

- [Badges](#BADGES)
- [Introduction](#INTRODUCTION)
- [Prerequisites](#PREREQUISITESITES)
- [Install](#INSTALL)
- [License](#LICENSE)


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

```
docker run -d --name opera -v /tmp/.X11-unix/:/tmp/.X11-unix/ -v /dev/snd:/dev/snd -v /dev/shm:/dev/shm -v /var/run/dbus:/var/run/dbus -e PULSE_SERVER=unix:${XDG_RUNTIME_DIR}/pulse/native -v ${XDG_RUNTIME_DIR}/pulse/native:${XDG_RUNTIME_DIR}/pulse/native --group-add $(getent group audio | cut -d: -f3) -v ${HOME}:/home/opera -e DISPLAY --network host alexandreoda/opera
```


## LICENSE

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://gitlab.com/oda-alexandre/opera/blob/master/LICENSE)
