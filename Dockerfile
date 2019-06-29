# IMAGE TO USE
FROM debian:stretch-slim

# MAINTAINER
MAINTAINER https://www.oda-alexandre.com/

# VARIABLES
ENV USER opera

# INSTALL PACKAGES
RUN apt-get update && apt-get install -y --no-install-recommends \
wget \
sudo \
ca-certificates \
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
libcanberra-gtk-module && \

# ADD USER
useradd -d /home/${USER} -m ${USER} && \
passwd -d ${USER} && \
adduser ${USER} sudo && \

# ADD opera-stable ON /etc/apt/sources.list & ADD THE KEY
echo "deb http://deb.opera.com/opera-stable/ stable non-free" >> /etc/apt/sources.list && \
wget -O - https://deb.opera.com/archive.key | apt-key add -

# INSTALL APP
RUN apt-get update
RUN yes | apt-get install -y \
opera-stable

# SELECT USER
USER ${USER}

# SELECT WORKING SPACE
WORKDIR /home/${USER}

# CLEANING
RUN sudo apt-get --purge autoremove -y \
wget && \
sudo apt-get autoclean -y && \
sudo rm /etc/apt/sources.list && \
sudo rm -rf /var/cache/apt/archives/* && \
sudo rm -rf /var/lib/apt/lists/*

# START THE CONTAINER
CMD opera --no-sandbox \
