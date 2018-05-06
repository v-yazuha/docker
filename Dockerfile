
FROM electronuserland/electron-builder

RUN npm install -g electron electron-builder 

RUN dpkg --add-architecture i386

# RUN apt-get update 

RUN apt-get -y install --install-recommends winehq-stable

#RUN apt-get install -y apt-utils zip python2.7 python2.7-dev wine1.8 wine32 mono-devel 


#RUN wget -nc https://dl.winehq.org/wine-builds/Release.key

#RUN apt-key add Release.key

#RUN apt-get update && apt-get -y install apt-transport-https curl

#RUN echo "deb https://dl.winehq.org/wine-builds/debian/ jessie main" | tee -a /etc/apt/sources.list




#RUN apt-get upgrade
#RUN apt-get dist-upgrade