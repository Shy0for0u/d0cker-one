FROM debian

LABEL MAINTAINER=dgorold-

ENV TS3SERVER_LICENSE=accept

RUN useradd -s /bin/bash -p '123' teamspeak

RUN apt-get update && apt-get upgrade && \
	apt-get -y install apt-utils wget bzip2 sudo && \
	wget http://dl.4players.de/ts/releases/3.8.0/teamspeak3-server_linux_amd64-3.8.0.tar.bz2 && \
	tar xfv teamspeak3-server_linux_amd64-3.8.0.tar.bz2

RUN chown teamspeak teamspeak3-server_linux_amd64/ts3server_startscript.sh

#WORKDIR teamspeak3-server_linux_amd64

EXPOSE 9987/udp 30033 10011

#RUN sudo adduser teamspeak sudo && \
#	sudo touch .ts3server_license_accepted

COPY ./entrypoint.sh .

CMD ["sh", "entrypoint.sh"]
