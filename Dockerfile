FROM debian:stretch-slim

LABEL authors https://www.oda-alexandre.com/

ENV USER opera
ENV LOCALES fr_FR.UTF-8

RUN echo -e '\033[36;1m ******* INSTALL PACKAGES ******** \033[0m'; \
  apt update && apt install -y --no-install-recommends \
  wget \
  sudo \
  ca-certificates \
  locales \
  gnupg \
  apt-transport-https \
  x11-xserver-utils \
  dirmngr \
  gnupg-l10n \
  alsa-utils \
  libasound2 \
  libasound2-plugins \
  pulseaudio \
  pulseaudio-utils \
  libcanberra-gtk-module

RUN echo -e '\033[36;1m ******* CHANGE LOCALES ******** \033[0m'; \
  locale-gen ${LOCALES}

RUN echo -e '\033[36;1m ******* ADD USER ******** \033[0m'; \
  useradd -d /home/${USER} -m ${USER}; \
  passwd -d ${USER}; \
  adduser ${USER} sudo

RUN echo -e '\033[36;1m ******* ADD contrib non-free IN sources.list ******** \033[0m'; \
  echo "deb http://deb.opera.com/opera-stable/ stable non-free" >> /etc/apt/sources.list; \
  wget -O - https://deb.opera.com/archive.key | apt-key add -

RUN echo -e '\033[36;1m ******* INSTALL APP ******** \033[0m'; \
  apt update; \
  yes | apt install -y \
  opera-stable

RUN echo -e '\033[36;1m ******* SELECT USER ******** \033[0m'
USER ${USER}

RUN echo -e '\033[36;1m ******* SELECT WORKING SPACE ******** \033[0m'
WORKDIR /home/${USER}

RUN echo -e '\033[36;1m ******* CLEANING ******** \033[0m'; \
  sudo apt-get --purge autoremove -y \
  wget; \
  sudo apt-get autoclean -y; \
  sudo rm /etc/apt/sources.list; \
  sudo rm -rf /var/cache/apt/archives/*; \
  sudo rm -rf /var/lib/apt/lists/*

RUN echo -e '\033[36;1m ******* CONTAINER START COMMAND ******** \033[0m'
CMD opera --no-sandbox \