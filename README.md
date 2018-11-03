# **<center>Opera</center>**


**INTRODUCTION**

*opera https://www.opera.com/fr via docker*


**PREREQUIS**

*Installer docker*


**INSTALLATION**

copier/coller dans un terminal :

    mkdir $HOME/opera

    docker run -d --name opera -v /tmp/.X11-unix/:/tmp/.X11-unix/ -v /dev/snd:/dev/snd -v /dev/shm:/dev/shm -v /var/run/dbus:/var/run/dbus -e PULSE_SERVER=unix:${XDG_RUNTIME_DIR}/pulse/native -v ${XDG_RUNTIME_DIR}/pulse/native:${XDG_RUNTIME_DIR}/pulse/native --group-add $(getent group audio | cut -d: -f3) -v ${HOME}/opera:/home/opera/Downloads -e DISPLAY --network host maitreoda/opera


**LICENSE**

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://github.com/oda-alexandre/opera/blob/master/LICENSE)
