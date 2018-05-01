
FROM node:10

RUN echo "deb http://httpredir.debian.org/debian jessie-backports main" >> /etc/apt/sources.list

RUN dpkg --add-architecture i386

RUN apt-get update 

RUN apt-get install -y wine1.8 winetricks