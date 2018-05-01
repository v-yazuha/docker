
FROM node:10

RUN echo "deb http://httpredir.debian.org/debian jessie-backports main" >> /etc/apt/sources.list

RUN dpkg --add-architecture i386

RUN wget -nc https://dl.winehq.org/wine-builds/Release.key

RUN apt-key add Release.key

RUN apt-get update 

RUN apt-get install --install-recommends winehq-stable