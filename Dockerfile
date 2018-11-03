FROM debian:latest

MAINTAINER https://oda-alexandre.github.io

RUN apt-get update

RUN apt-get install -y --no-install-recommends wget sudo ca-certificates gnupg apt-transport-https x11-xserver-utils dirmngr gnupg-l10n alsa-utils libasound2 libasound2-plugins pulseaudio pulseaudio-utils libcanberra-gtk-module

RUN useradd -d /home/opera -m opera
RUN passwd -d opera
RUN adduser opera sudo

RUN echo "deb http://deb.opera.com/opera-stable/ stable non-free" >> /etc/apt/sources.list
RUN wget -O - https://deb.opera.com/archive.key | apt-key add -
RUN apt-get update
RUN yes | apt-get install -y opera-stable
RUN mkdir /home/opera/Downloads

RUN apt-get --purge autoremove -y wget

USER opera

CMD opera --no-sandbox
